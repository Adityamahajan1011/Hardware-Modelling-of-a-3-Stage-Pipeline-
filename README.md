# Hardware-Modelling-of-a-3-Stage-Pipeline-

📌 Overview

This project implements a basic 3-stage pipelined model using Verilog HDL to demonstrate the working principle of pipelining. Each stage performs a simple arithmetic operation, and pipeline registers are used to pass data between stages. This design is purely conceptual and does not represent a processor or instruction execution.

🧠 Pipeline Structure

The pipeline is divided into three sequential stages:

1️⃣ Stage 1

Accepts input data

Performs a basic arithmetic operation

Stores the result in a pipeline register

2️⃣ Stage 2

Receives data from Stage 1

Performs another arithmetic computation

Passes the output to the next pipeline register

3️⃣ Stage 3

Processes data from Stage 2

Executes a final arithmetic operation

Produces the final output

Multiple data values can be processed simultaneously, with each stage operating in parallel on different inputs.

⚙️ Features

Simple and clean 3-stage pipeline design

Stage-wise arithmetic operations

Pipeline registers between stages

Demonstrates parallel data processing

Beginner-friendly Verilog implementation
