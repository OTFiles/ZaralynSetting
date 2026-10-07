.class Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateUserDictionaryPreference(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic val$localeSet:Ljava/util/TreeSet;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/util/TreeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    .line 234
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->val$localeSet:Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10
    .param p1, "arg0"    # Landroid/support/v7/preference/Preference;

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v0, "extras":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 242
    .local v1, "titleRes":I
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v7, 0x1

    if-gt v2, v7, :cond_1

    .line 243
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    const-string v2, "locale"

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    const-class v2, Lcom/android/settings/inputmethod/UserDictionarySettings;

    .line 255
    .local v2, "targetFragment":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    const v1, 0x7f120faa

    goto :goto_0

    .line 257
    .end local v2
    :cond_1
    const-class v2, Lcom/android/settings/inputmethod/UserDictionaryList;

    .line 258
    .restart local v2
    const v1, 0x7f120faa

    .line 260
    .end local v1
    .end local v2
    .local v8, "targetFragment":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    .local v9, "titleRes":I
    :goto_0
    move v9, v1

    move-object v8, v2

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    .line 261
    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    .line 260
    move v4, v9

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 262
    return v7
.end method
