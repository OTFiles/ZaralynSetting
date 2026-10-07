.class final Lcom/android/settings/notification/SettingPrefController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SettingPrefController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SettingPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SettingPrefController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/SettingPrefController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/notification/SettingPrefController;

    .line 95
    iput-object p1, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 110
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    iget-object v0, v0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {v0}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    iget-object v0, v0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    iget-object v1, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    invoke-static {v1}, Lcom/android/settings/notification/SettingPrefController;->access$100(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 114
    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    invoke-static {v0}, Lcom/android/settings/notification/SettingPrefController;->access$000(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    iget-object v1, v1, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {v1}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 106
    :goto_0
    return-void
.end method
