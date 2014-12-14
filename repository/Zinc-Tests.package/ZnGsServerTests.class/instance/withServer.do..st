private
withServer: authenticator do: block
  self withGemServer: authenticator do: block