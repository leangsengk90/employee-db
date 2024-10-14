# Use the official MongoDB image from Docker Hub
FROM mongo:6.0

# Set environment variables for MongoDB configuration
ENV MONGO_INITDB_ROOT_USERNAME=mongoadmin
ENV MONGO_INITDB_ROOT_PASSWORD=securepassword123

# Optional: Add custom MongoDB configuration
COPY mongod.conf /etc/mongod.conf
COPY mongodb-keyfile /data/mongodb-keyfile

# Expose MongoDB default port (27017)
EXPOSE 27017

# Optional: Copy initialization scripts
# These scripts will run when the container starts, used to initialize databases or users
COPY ./init-scripts/ /docker-entrypoint-initdb.d/

# Command to start MongoDB with the specified configuration file
CMD ["mongod", "--config", "/etc/mongod.conf"]
