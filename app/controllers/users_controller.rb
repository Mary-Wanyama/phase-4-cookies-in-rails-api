class UsersController < ApplicationController 
    def show 
        user = User.find_by(id: params[:id])
        if user 
            render json: user 
        else  
            render json: {erro: "Not authorised"}, status: :unauthorized 
        end
    end
end



# function App() {
#     const [user, setUser] = useState(null);
  
#     useEffect(() => {
#       fetch("/me").then((response) => {
#         if (response.ok) {
#           response.json().then((user) => setUser(user));
#         }
#       });
#     }, []);
  
#     if (user) {
#       return <h2>Welcome, {user.username}!</h2>;
#     } else {
#       return <Login onLogin={setUser} />;
#     }
#   }