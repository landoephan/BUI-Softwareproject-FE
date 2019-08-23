<template>
    <div class="content">
        <div class="login">
            <h1>Login</h1>
            <p>
                <input type="text" placeholder="Nutzername"/>
            </p>
            <p>
                <input type="password" placeholder="Passwort"/>
            </p>
            <div>
                <a href="#/register">Noch kein Konto?</a>
                <button class="btn btn-secondary">Einloggen</button>
            </div>
        </div>
    </div>
</template>

<style scoped>
div {
  text-align: center;
}

.content {
  padding: 20px 100px 0px 100px;
}

.login {
  border-radius: 4px;
  padding: 25px;
  background-color: #f2f2f2;
  border: 1px solid lightgrey;
}

.btn {
  margin-left: 5px;
}

input {
  padding: 0px 6px;
  border-radius: 4px;
}
</style>
