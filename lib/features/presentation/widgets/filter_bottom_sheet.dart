import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rundate/core/utils/size_util.dart';
import 'package:rundate/core/widgets/custom_button.dart';
import 'package:rundate/features/domain/entities/enums/filter.dart';
import 'package:rundate/features/domain/entities/selected_filter.dart';
import 'package:rundate/features/presentation/providers/home_controller.dart';
import 'package:rundate/features/presentation/widgets/filter_list.dart';

class FilterBottomSheet extends ConsumerStatefulWidget {
  const FilterBottomSheet({
    super.key,
  });

  @override
  ConsumerState<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends ConsumerState<FilterBottomSheet> {
  late SelectedFilter selectedFilters;

  @override
  void initState() {
    selectedFilters = ref.read(
      homeControllerProvider.select((value) => value.selectedFilter),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.size,
        horizontal: 20.size,
      ),
      child: Wrap(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '월 선택',
                style: TextStyle(
                  fontSize: 18.size,
                  fontWeight: FontWeight.w500,
                ),
              ),
              FilterList(
                filters: Month.values.map((e) => e.name).toList(),
                selectedFilters: selectedFilters,
                onTap: (filter) {
                  if (selectedFilters.month.contains(filter)) {
                    selectedFilters.month.remove(filter);
                  } else {
                    selectedFilters = selectedFilters.copyWith(
                      month: [...selectedFilters.month, filter],
                    );
                  }
                  setState(() {});
                },
              ),
              SizedBox(
                height: 8.size,
              ),
              Text(
                '접수',
                style: TextStyle(
                  fontSize: 18.size,
                  fontWeight: FontWeight.w500,
                ),
              ),
              FilterList(
                filters: Reception.values.map((e) => e.name).toList(),
                selectedFilters: selectedFilters,
                onTap: (filter) {
                  if (selectedFilters.reception.contains(filter)) {
                    selectedFilters.reception.remove(filter);
                  } else {
                    selectedFilters = selectedFilters.copyWith(
                      reception: [...selectedFilters.reception, filter],
                    );
                  }
                  setState(() {});
                },
              ),
              SizedBox(
                height: 8.size,
              ),
              Text(
                '종목',
                style: TextStyle(
                  fontSize: 18.size,
                  fontWeight: FontWeight.w500,
                ),
              ),
              FilterList(
                filters: Event.values.map((e) => e.name).toList(),
                selectedFilters: selectedFilters,
                onTap: (filter) {
                  if (selectedFilters.event.contains(filter)) {
                    selectedFilters.event.remove(filter);
                  } else {
                    selectedFilters = selectedFilters.copyWith(
                      event: [...selectedFilters.event, filter],
                    );
                  }
                  setState(() {});
                },
              ),
              // SizedBox(
              //   height: 8.size,
              // ),
              // Text(
              //   '알림 설정',
              //   style: TextStyle(
              //     fontSize: 18.size,
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
              // FilterList(
              //   filters: NotificationOnOff.values.map((e) => e.name).toList(),
              //   selectedFilters: selectedFilters,
              //   onTap: (filter) {
              //     if (selectedFilters.notificationOnOff.contains(filter)) {
              //       selectedFilters.notificationOnOff.remove(filter);
              //     } else {
              //       selectedFilters = selectedFilters.copyWith(
              //         notificationOnOff: [
              //           ...selectedFilters.notificationOnOff,
              //           filter
              //         ],
              //       );
              //     }
              //     setState(() {});
              //   },
              // ),
              SizedBox(
                height: 15.size,
              ),
              Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: CustomButton(
                      text: '취소',
                      primary: false,
                      onTap: context.pop,
                    ),
                  ),
                  SizedBox(
                    width: 10.size,
                  ),
                  Flexible(
                    flex: 7,
                    child: CustomButton(
                        text: '적용하기',
                        onTap: () {
                          ref
                              .read(homeControllerProvider.notifier)
                              .setFilter(selectedFilters);
                          context.pop();
                        }),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
