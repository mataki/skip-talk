class SessionsController < ApplicationController
  include OpenIdAuthentication
  include Repim::RelyingParty

  include SkipEmbedded::OpenIdSso::SessionManagement
  use_attribute_exchange(["http://axschema.org", "http://schema.openid.net"],
                          :display_name => "/namePerson", :name => "/namePerson/friendly" )
end
