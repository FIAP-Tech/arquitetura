#!/bin/bash

awslocal sqs create-queue --queue-name envia_emails

awslocal sqs create-queue --queue-name processa_pedidos

awslocal sqs create-queue --queue-name processa_entregas


