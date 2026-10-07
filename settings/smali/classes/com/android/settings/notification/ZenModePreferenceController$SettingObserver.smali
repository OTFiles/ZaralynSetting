.class Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "ZenModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field private final mPreference:Landroid/support/v7/preference/Preference;

.field final synthetic this$0:Lcom/android/settings/notification/ZenModePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenModePreferenceController;Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenModePreferenceController;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .line 99
    iput-object p1, p0, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/ZenModePreferenceController;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 93
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 94
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    .line 101
    iput-object p2, p0, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->mPreference:Landroid/support/v7/preference/Preference;

    .line 102
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 115
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/ZenModePreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/ZenModePreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 123
    :cond_1
    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 105
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 107
    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 110
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 111
    return-void
.end method
