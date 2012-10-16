require 'zip/zip'

Zip::ZipFile::foreach("dump/lsp.zip") do |entry|
    istream = entry.get_input_stream
    data = istream.read
    puts entry
end