# YourDigits Flutter App - Navigation Map

This document provides a complete navigation structure and page listing for the YourDigits Flutter app.

## Registered Routes (in nav.dart)

| Route Path          | Widget                   | Purpose                        | File Path |
|---------------------|--------------------------|--------------------------------|-----------|
| `/`                 | SummaryWidget            | Home/Dashboard                 | `lib/home_screen/summary/summary_widget.dart` |
| `/summary`          | SummaryWidget            | Dashboard (duplicate)          | `lib/home_screen/summary/summary_widget.dart` |
| `/authSignUp`       | AuthSignUpWidget         | Sign up                        | `lib/authentication/auth_sign_up/auth_sign_up_widget.dart` |
| `/authLogin`        | AuthLoginWidget          | Login                          | `lib/authentication/auth_login/auth_login_widget.dart` |
| `/authForgotPassword` | AuthForgotPasswordWidget | Password recovery              | `lib/authentication/auth_forgot_password/auth_forgot_password_widget.dart` |
| `/authResetPassword` | AuthResetPasswordWidget  | Password reset                 | `lib/authentication/auth_reset_password/auth_reset_password_widget.dart` |
| `/transactions`     | TransactionsWidget       | Transaction list               | `lib/transaction/transactions/transactions_widget.dart` |
| `/addTransaction`   | AddTransactionWidget     | Add new transaction            | `lib/transaction/add_transaction/add_transaction_widget.dart` |
| `/editTransaction`  | EditTransactionWidget    | Edit transaction (needs rowId) | `lib/transaction/edit_transaction/edit_transaction_widget.dart` |
| `/accounts`         | AccountsWidget           | Account list                   | `lib/accounts/accounts/accounts_widget.dart` |
| `/addAccount`       | AddAccountWidget         | Add new account                | `lib/accounts/add_account/add_account_widget.dart` |
| `/editAccount`      | EditAccountWidget        | Edit account (needs accountId) | `lib/accounts/edit_account/edit_account_widget.dart` |
| `/budgets`          | BudgetsWidget            | Budget management              | `lib/budget/budgets/budgets_widget.dart` |

## Navigation Flow

### Main App Navigation (Bottom Bar)
- **Home** (🏠): Summary page
- **List** (📋): → TransactionsWidget
- **Task** (📊): → BudgetsWidget
- **Wallet** (💰): → AccountsWidget

### Authentication Flow
- AuthSignUpWidget → AuthLoginWidget or SummaryWidget (after signup)
- AuthLoginWidget → AuthForgotPasswordWidget or SummaryWidget (after login)
- AuthForgotPasswordWidget → AuthResetPasswordWidget
- AuthResetPasswordWidget → AuthSignUpWidget (after reset)

### Transaction Flow
- SummaryWidget → AddTransactionWidget (FAB button)
- TransactionsWidget ↔ EditTransactionWidget
- TransactionsWidget → Summary/Accounts/Budgets (bottom nav)

### Account Flow
- AccountsWidget ↔ AddAccountWidget
- AccountsWidget ↔ EditAccountWidget
- EditAccountWidget → SummaryWidget (after save)

### Budget Flow
- BudgetsWidget → Summary/Transactions/Accounts (bottom nav)

## Components (Reusable UI Elements)
- **Transaction Popup**: `lib/components/trans_pop_up_widget.dart`
- **Jar Drag Target**: `lib/components/jar_drag_target_widget.dart`
- **Gold Coin Draggable**: `lib/components/gold_coin_draggable_widget.dart`