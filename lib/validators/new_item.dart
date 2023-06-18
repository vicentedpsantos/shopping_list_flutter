class NewItemValidator {
  const NewItemValidator();

  String? isValidName(String? attemptedName) {
    if (attemptedName == null ||
        attemptedName.isEmpty ||
        attemptedName.trim().length <= 1 ||
        attemptedName.trim().length > 50) {
      return 'Must be between 1 and 50 characters';
    }

    return null;
  }

  String? isValidQuantity(String? quantity) {
    if (quantity == null || quantity.isEmpty || int.tryParse(quantity) == null) {
      return 'Must be a valid positive number';
    }

    return null;
  }
}
