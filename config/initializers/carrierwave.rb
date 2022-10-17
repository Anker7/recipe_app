unless Rails.env.development? || Rails.env.test?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAZVVHLBMHQKZ6GKLR',
      aws_secret_access_key: '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',
      region: 'ap-northeast-1'
    }

    config.fog_directory  = 'rails-photo2538'
    config.cache_storage = :fog
  end
end