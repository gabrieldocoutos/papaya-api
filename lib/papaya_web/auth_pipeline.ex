
defmodule Papaya.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :Papaya,
  module: Papaya.Guardian,
  error_handler: Papaya.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
