FROM                     public.ecr.aws/aws-cli/aws-cli
COPY                     run.sh /
ENTRYPOINT               ["bash", "/run.sh"]