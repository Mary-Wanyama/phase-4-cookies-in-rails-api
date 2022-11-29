class SessionsController < ApplicationController
  
  def index
    session[:session_hello] ||= "World"
    cookies[:cookies_hello] ||= "World"
    render json: { session: session, cookies: cookies.to_hash }
  end
  def create 
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id 
    render json: user

  end

  def destroy
    session.delete :user_id
    head :no_content 
  end


end

# function Login({ onLogin }) {
#   const [username, setUsername] = useState("");

#   function handleSubmit(e) {
#     e.preventDefault();
#     fetch("/login", {
#       method: "POST",
#       headers: {
#         "Content-Type": "application/json",
#       },
#       body: JSON.stringify({ username }),
#     })
#       .then((r) => r.json())
#       .then((user) => onLogin(user));
#   }

#   return (
#     <form onSubmit={handleSubmit}>
#       <input
#         type="text"
#         value={username}
#         onChange={(e) => setUsername(e.target.value)}
#       />
#       <button type="submit">Login</button>
#     </form>
#   );
# }


# function Navbar({ onLogout }) {
#   function handleLogout() {
#     fetch("/logout", {
#       method: "DELETE",
#     }).then(() => onLogout());
#   }

#   return (
#     <header>
#       <button onClick={handleLogout}>Logout</button>
#     </header>
#   );
# }