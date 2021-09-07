require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage :fogs
  config.fog_provider = 'fog/aws'
  config.fog_directory  = 'sszzkk' #ENV['AWS_BUCKET']
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIAUGPYIMIXJOZMKL7F' ,#ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: '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' , #ENV['AWS_SECRET_ACCESS_KEY'],
    region: 'p-northeast-1' , #ENV['AWS_DEFAULT_REGION'],
    path_style: true
  }
end