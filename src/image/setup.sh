#!/usr/bin/env bash

REMOTE_USER="vscode"

# Setup default shell
chsh -s /usr/bin/zsh "${REMOTE_USER}"

# Setup direnv
cat <<EOF >>"/home/${REMOTE_USER}/.bashrc"
eval "\$(direnv hook bash)"
EOF

cat <<EOF >>"/home/${REMOTE_USER}/.zshrc"
eval "\$(direnv hook zsh)"
EOF

# Setup starship
cat <<EOF >>"/home/${REMOTE_USER}/.bashrc"
eval "\$(starship init bash)"
EOF

cat <<EOF >>"/home/${REMOTE_USER}/.zshrc"
eval "\$(starship init zsh)"
EOF

# Setup shell history cache
mkdir -p "/shellhistory"

touch "/shellhistory/.bash_history"
touch "/shellhistory/.zsh_history"

chown -R "${REMOTE_USER}:" "/shellhistory"

cat <<EOF >>"/home/${REMOTE_USER}/.bashrc"
export HISTFILE='/shellhistory/.bash_history'
EOF

cat <<EOF >>"/home/${REMOTE_USER}/.zshrc"
export HISTFILE='/shellhistory/.zsh_history'
EOF

# Setup trunk cache
mkdir -p "/trunk"

chown -R "${REMOTE_USER}:" "/trunk"

cat <<EOF >>"/home/${REMOTE_USER}/.bashrc"
export TRUNK_CACHE='/trunk'
EOF

cat <<EOF >>"/home/${REMOTE_USER}/.zshrc"
export TRUNK_CACHE='/trunk'
EOF

# Setup npm cache
mkdir -p "/npm"

chown -R "${REMOTE_USER}:" "/npm"

cat <<EOF >>"/home/${REMOTE_USER}/.bashrc"
export NPM_CONFIG_CACHE='/npm'
EOF

cat <<EOF >>"/home/${REMOTE_USER}/.zshrc"
export NPM_CONFIG_CACHE='/npm'
EOF

# Setup poetry cache
mkdir -p "/poetry"

chown -R "${REMOTE_USER}:" "/poetry"

cat <<EOF >>"/home/${REMOTE_USER}/.bashrc"
export POETRY_CACHE_DIR='/poetry'
EOF

cat <<EOF >>"/home/${REMOTE_USER}/.zshrc"
export POETRY_CACHE_DIR='/poetry'
EOF
