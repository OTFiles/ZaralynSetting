.class public Lcom/android/settings/notification/ZenSuggestionActivity;
.super Landroid/app/Activity;
.source "ZenSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .local v0, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenSuggestionActivity;->startActivity(Landroid/content/Intent;)V

    .line 19
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ZEN_MODE_ONBOARDING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .local v1, "onboardingActivity":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenSuggestionActivity;->startActivity(Landroid/content/Intent;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenSuggestionActivity;->finish()V

    .line 23
    return-void
.end method
