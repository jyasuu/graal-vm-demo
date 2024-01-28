FROM ghcr.io/graalvm/native-image-community:21 as build

WORKDIR /workspace/app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN ./mvnw -Pnative native:compile -DskipTests

CMD ["/workspace/app/target/demo-shell"]

FROM alpine

RUN apk add gcompat

COPY --from=build /workspace/app/target/demo-shell /usr/bin/dshell

ENTRYPOINT ["dshell"] 

# CMD ["/usr/bin/dshell"]
