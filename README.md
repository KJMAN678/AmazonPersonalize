```sh
$ touch .env
AWS コンソールの IAM Amazon Personalize / S3 / IAM のアクセス許可をつけたAWSのアクセスキーを入力
AWS_ACCESS_KEY_ID=""
AWS_SECRET_ACCESS_KEY=""


$ docker compose up -d

$ docker compose down
$ docker compose build
$ docker compose up -d

http://127.0.0.1:8888/lab
```

### Amazon Personalize のリソース

- Manage dataset groups
  - Dataset Groups
- Datasets
- Custom Resource
  - Solution and recipes
  - Campaign

- 削除順
  - Campaign >> Solution and recipes >> S3 のバケット内のcsv >> S3 のバケット >> DataSet >> DataSetGroup



### 参考サイト
- [アイテムインタラクションデータセットスキーマの要件 (カスタム)](https://docs.aws.amazon.com/ja_jp/personalize/latest/dg/interactions-datasets.html#item-interaction-requirements)
  - 少なくとも、各インタラクションについて以下を入力する必要があります。
    - ユーザー ID
    - アイテム ID
    - タイムスタンプ (Unix エポック時間形式)
- [アイテムインタラクションデータの要件](https://docs.aws.amazon.com/ja_jp/personalize/latest/dg/interactions-datasets.html)
  - アイテムインタラクションデータには、次の列が必要です。
    - USER_ID
    - ITEM_ID
    - TIMESTAMP
    - EVENT_TYPE
- [AWS の Amazon Personalize のサンプルコード](https://github.com/aws-samples/amazon-personalize-samples/blob/a62e726b6b4935939da1ed68a153a1a2a9bd3584/next_steps/core_use_cases/related_items/personalize_aws_similar_items_example.ipynb)
- [Jupyter Lab(Notebook)をローカル環境のDocker Composeで起動する方法](https://dev.classmethod.jp/articles/jupyter-notebook-on-docker-compose/)
- Amazon データセット カラムの説明
  - [Prime Pantry](https://cseweb.ucsd.edu/~jmcauley/datasets/amazon_v2/#:~:text=09%2013%2C%202009%22%20%7D-,%E3%81%A8%E3%82%99%E3%81%93,-revieworID%20-%20%E3%83%AC%E3%83%93%E3%83%A5%E3%83%BC%E6%8B%85%E5%BD%93)
  - [メタデータ](https://cseweb.ucsd.edu/~jmcauley/datasets/amazon_v2/#:~:text=Other%20Sports%22%2C%20%22Dance%22%5D%5D%0A%7D-,where,-asin%20-%20ID%20of)
- [Amazon Personalize のリージョン](https://docs.aws.amazon.com/general/latest/gr/personalize.html)
- [【AWS】アクセスキーの作成/登録](https://qiita.com/ozaki25/items/034f7f8e8ad69adceea7)
- [Amazon Personalize チートシート](https://github.com/aws-samples/amazon-personalize-samples/blob/master/PersonalizeCheatSheet2.0.md)
- [ZOZO Amazon Personalizeの導入における知見と注意点](https://techblog.zozo.com/entry/fashion-tech-news-personalize)
- [Amazon Personalize データセット内のデータの品質と量の分析](https://docs.aws.amazon.com/ja_jp/personalize/latest/dg/analyzing-data.html)
- [データセットインポートジョブを使用してバルクデータを Amazon Personalize にインポートする データセットのインポートジョブの作成 (AWS SDKs)](https://docs.aws.amazon.com/ja_jp/personalize/latest/dg/bulk-data-import-step.html#python-import-ex)
- [英語 トレーニングデータを Amazon Personalize データセットにインポートする](https://docs.aws.amazon.com/personalize/latest/dg/import-data.html)
- [boto3](https://boto3.amazonaws.com/v1/documentation/api/latest/index.html)
- [ECOMMERCE のユースケース](https://docs.aws.amazon.com/ja_jp/personalize/latest/dg/ECOMMERCE-use-cases.html)
  - 各種 レシピ ARN が紹介されている
- [Amazon Personalize リソースを削除するための要件](https://docs.aws.amazon.com/ja_jp/personalize/latest/dg/deleting-resources.html#cleaning-up-custom-resources)
- [Personalize で使われている Avro の型](https://avro.apache.org/docs/1.11.1/specification/)
- [boto3 データセットグループの説明を取得](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/personalize/client/describe_dataset_group.html)
  - Personalize.Client.describe_dataset_group
- [プロのヒント – Python Dockerビルドの高速化](https://www.revsys.com/tidbits/faster-python-docker-builds/])
- [AWS Personalize サンプルコード aws-ecomm-frequently-bought-together レシピ対応あり](https://github.com/aws-solutions-library-samples/amazon-personalize-online-recommendations-with-google-tag-manager/blob/ea9e03733592c994cb704ac7e84858cc94dfd134/packages/api/src/notebook/Personalize%20Models.ipynb)
- [products.yaml](https://raw.githubusercontent.com/aws-samples/retail-demo-store/refs/heads/master/src/products/data/products.yaml)
- [Kaggle AWS-Sample-Retail-Demo-Store データセット](https://www.kaggle.com/datasets/mobasshir/awssampleretaildemostore?resource=download)
- [Amazon Personalize レシピ - aws-ecomm-customers-who-viewed-x-also-viewed の注意点](https://repost.aws/questions/QUSZrRpAVGT72K3BgUP1FdNA/amazon-personalize-recipe-aws-ecomm-customers-who-viewed-x-also-viewed)
