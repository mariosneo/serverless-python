
Install pipenv:

```
python3.8 -m pip install pipenv
```

Another option to upgade, is `pip3 install pipenv --upgrade`


Create Virtual Environment with Pipenv

```
mkdir ~/Document/serverless-python
cd ~/Document/serverless-python
pipenv install --python 3.8
pipenv shell

```

Run the commands below to build the docker image or run the build.sh script to build and run the container:

```
docker build -t serverless-python -f Dockerfile .

docker run --env PORT=5000 -it -p 80:5000 serverless-python
```

Build an image on the Google Cloud Registry service

```
gcloud builds submit --tag gcr.io/$PROJECT_ID/serverless-python
```

Deploy the image with google Cloud Run 

```
gcloud run deploy serverless-pyrhon --image gcr.io/$PROJECT_ID/serverless-python --platform managed --region us-west1
```
The var.sh containes all the env variables 

```
export PROJECT_ID="" # to be replaced with the project ID
```

```
google
```
