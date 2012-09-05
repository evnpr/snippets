require 'aws/s3'

AWS::S3::Base.establish_connection!(
    :access_key_id  => 'wrwfklajsflka',
    :secret_access_key  => 'fsarioasfa'
)


AWS::S3::DEFAULT_HOST.replace "s3-ap-southeast-1.amazonaws.com"
mybucket = AWS::S3::Bucket.find('evnprbucket')

AWS::S3::S3Object.store(
        'test.php', 
        open('test.php'), 
        'evnprbucket',
        :access => :public_read
        )

findbucket = AWS::S3::S3Object.find 'mytest.php', 'evnprbucket'

puts findbucket.value

File.open('mytest.php', 'w') {|f| f.write(findbucket.value)}

puts mybucket.objects.size
