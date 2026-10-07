.class final Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/ZenModeSettingsBase;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/ZenModeSettingsBase;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    .line 95
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->access$100(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 91
    const-string p1, "zen_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 92
    const-string p1, "zen_mode_config_etag"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/ZenModeSettingsBase;Lcom/android/settings/notification/ZenModeSettingsBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/notification/ZenModeSettingsBase;
    .param p2, "x1"    # Lcom/android/settings/notification/ZenModeSettingsBase$1;

    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;-><init>(Lcom/android/settings/notification/ZenModeSettingsBase;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 109
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeSettingsBase;->access$500(Lcom/android/settings/notification/ZenModeSettingsBase;Z)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeBackend;->updatePolicy()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onZenModeConfigChanged()V

    .line 117
    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->access$200(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->access$300(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->access$400(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 105
    return-void
.end method
