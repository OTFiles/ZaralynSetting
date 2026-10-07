.class public Lcom/android/settings/HelpTrampoline;
.super Landroid/app/Activity;
.source "HelpTrampoline.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->finishAndRemoveTask()V

    .line 40
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 44
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 47
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 52
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/HelpTrampoline;->startActivityForResult(Landroid/content/Intent;I)V

    .line 57
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "HelpTrampoline"

    const-string v2, "Failed to resolve help"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .end local v0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/HelpTrampoline;->finish()V

    .line 60
    return-void
.end method
