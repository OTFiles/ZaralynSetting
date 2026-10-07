.class Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "AbstractZenModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/AbstractZenModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_DURATION_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field private final mPreference:Landroid/support/v7/preference/Preference;

.field final synthetic this$0:Lcom/android/settings/notification/AbstractZenModePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/AbstractZenModePreferenceController;Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/notification/AbstractZenModePreferenceController;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .line 132
    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 124
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 125
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    .line 127
    const-string v0, "zen_duration"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_DURATION_URI:Landroid/net/Uri;

    .line 134
    iput-object p2, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->mPreference:Landroid/support/v7/preference/Preference;

    .line 135
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 149
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 150
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_DURATION_URI:Landroid/net/Uri;

    .line 151
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeBackend;->updatePolicy()V

    .line 153
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeBackend;->updateZenMode()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    iget-object v1, v1, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/AbstractZenModePreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 159
    :cond_2
    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 138
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_DURATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 141
    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 144
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 145
    return-void
.end method
