# Pythonの公式イメージをベースとする
FROM python:3.10

# 作業ディレクトリを設定
WORKDIR /app

# 必要なパッケージやライブラリをインストール
COPY requirements.txt .
RUN pip install streamlit pypdf2 langchain python-dotenv faiss-cpu openai huggingface_hub tiktoken InstructorEmbedding sentence_transformers

# アプリケーションのソースコードをコピー
COPY . .

# アプリケーションを実行
CMD ["streamlit", "run", "app.py"]
