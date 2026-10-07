.class Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/inputmethod/InputMethodPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/text/Collator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    .line 431
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/inputmethod/InputMethodPreference;Lcom/android/settingslib/inputmethod/InputMethodPreference;)I
    .locals 1
    .param p1, "lhs"    # Lcom/android/settingslib/inputmethod/InputMethodPreference;
    .param p2, "rhs"    # Lcom/android/settingslib/inputmethod/InputMethodPreference;

    .line 434
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;->val$collator:Ljava/text/Collator;

    invoke-virtual {p1, p2, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->compareTo(Lcom/android/settingslib/inputmethod/InputMethodPreference;Ljava/text/Collator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 431
    check-cast p1, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    check-cast p2, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;->compare(Lcom/android/settingslib/inputmethod/InputMethodPreference;Lcom/android/settingslib/inputmethod/InputMethodPreference;)I

    move-result p1

    return p1
.end method
