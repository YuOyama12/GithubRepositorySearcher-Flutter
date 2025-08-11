import 'package:flutter/material.dart';
import 'package:github_repository_searcher/domain/entity/response/repositories_response/repository/repository.dart';

class RepositoryItem extends StatelessWidget {
  const RepositoryItem({
    super.key,
    required this.repository,
  });
  
  final Repository repository;

  @override
  Widget build(BuildContext context) {
    final description = repository.description;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.zero,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: Image.network(
              repository.owner.avatarUrl ?? "",
              height: 72.0,
              width: 72.0,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsetsGeometry.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      repository.name,
                      style: TextStyle(
                        fontSize: 18.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6.0),
                    (description == null)
                        ? SizedBox.shrink()
                        : Text(
                          description,
                          style: TextStyle(fontSize: 12.5),
                          overflow: TextOverflow.ellipsis,
                        ),

                  ],
                )
            )
          )
        ],
      ),
    );
  }
}