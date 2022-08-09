import 'package:news_app/src/core/usecases/usecase.dart';

import '../../core/params/article_request.dart';
import '../../core/resources/data_state.dart';
import '../../core/usecases/usecase.dart';
import '../entities/article.dart';
import '../repositories/articles_repository.dart';

class GetArticlesUseCase
    implements UseCase<DataState<List<Article>>, ArticleRequestParams> {
  final ArticleRepository _articlesRepository;

  GetArticlesUseCase(this._articlesRepository);

  @override
  Future<DataState<List<Article>>> call({ArticleRequestParams? params}) {
    return _articlesRepository.getBreakingNewsArticles(params!);
  }
}
