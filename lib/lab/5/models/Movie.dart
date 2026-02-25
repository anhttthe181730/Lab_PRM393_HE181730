import 'Trailer.dart';

class Movie {
  final int id;
  final String title;
  final String posterUrl;
  final String overview;
  final List<String> genres;
  final double rating;
  final List<Trailer> trailers;

  Movie({
    required this.id,
    required this.title,
    required this.posterUrl,
    required this.overview,
    required this.genres,
    required this.rating,
    required this.trailers,
  });
}

List<Movie> sampleMovies = [
  Movie(
    id: 101,
    title: 'Bố Già',
    posterUrl: 'assets/images/haicau.jpg',
    overview:
        'Câu chuyện về tình cảm cha con trong một gia đình lao động ở Sài Gòn với nhiều mâu thuẫn và yêu thương.',
    genres: ['Drama', 'Family'],
    rating: 8.1,
    trailers: [
      Trailer(title: 'Trailer Chính Thức'),
      Trailer(title: 'Hậu Trường Sản Xuất'),
    ],
  ),
  Movie(
    id: 102,
    title: 'Hai Phượng',
    posterUrl: 'assets/images/conMeo.jpg',
    overview:
        'Một người mẹ đơn thân dấn thân vào hành trình nguy hiểm để giải cứu con gái khỏi băng nhóm bắt cóc.',
    genres: ['Action', 'Thriller'],
    rating: 7.8,
    trailers: [
      Trailer(title: 'Official Trailer'),
      Trailer(title: 'International Trailer'),
    ],
  ),
  Movie(
    id: 103,
    title: 'Mắt Biếc',
    posterUrl: 'assets/images/conMeo.jpg',
    overview:
        'Chuyện tình đơn phương đầy day dứt của Ngạn dành cho Hà Lan, trải dài từ làng quê đến thành phố.',
    genres: ['Romance', 'Drama'],
    rating: 7.9,
    trailers: [
      Trailer(title: 'Trailer 1'),
      Trailer(title: 'Teaser Trailer'),
    ],
  ),
  Movie(
    id: 104,
    title: 'Lật Mặt 6: Tấm Vé Định Mệnh',
    posterUrl: 'assets/images/conMeo.jpg',
    overview:
        'Nhóm bạn thân vướng vào biến cố lớn sau khi một tấm vé số trúng thưởng làm thay đổi tất cả.',
    genres: ['Action', 'Comedy'],
    rating: 7.5,
    trailers: [
      Trailer(title: 'Trailer Chính Thức'),
      Trailer(title: 'Clip Giới Thiệu Nhân Vật'),
    ],
  ),
];
