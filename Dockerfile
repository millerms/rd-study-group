FROM ruby:3.2-slim

# Install build deps for Jekyll and native gems (e.g., nokogiri)
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    libffi-dev \
    libxml2-dev \
    libxslt1-dev \
    zlib1g-dev \
    nodejs \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /site

# Pre-install gems with cache efficiency
COPY Gemfile Gemfile.lock ./
RUN gem install bundler:2.7.1 \
  && bundle config set path 'vendor/bundle' \
  && bundle install --jobs 4 --retry 3

# Copy the rest of the site
COPY . .

EXPOSE 4000

ENV JEKYLL_ENV=development \
    BUNDLE_PATH=/site/vendor/bundle

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000", "--livereload", "--trace"]

