import axios from 'axios';

const API_URL = 'http://localhost:8081/api/users';

class UserService {
    getAllUsers() {
        return axios.get(API_URL);
    }

    getUserById(id) {
        return axios.get(`${API_URL}/${id}`);
    }

    createUser(user) {
        return axios.post(API_URL, user);
    }

    deleteUser(id) {
        return axios.delete(`${API_URL}/${id}`);
    }
}

export default new UserService();