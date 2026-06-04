FROM alpine:latest

# Alpine එකට X-UI රන් කරන්න අවශ්‍ය Compatibility Packages ඉන්ස්ටෝල් කිරීම
RUN apk add --no-cache git curl bash libc6-compat gcompat

WORKDIR /app

RUN git clone https://github.com/HenukaHirunnada/huna.git .

RUN chmod +x run.sh

ENV PORT=7860
EXPOSE 7860

CMD ["./run.sh"]
