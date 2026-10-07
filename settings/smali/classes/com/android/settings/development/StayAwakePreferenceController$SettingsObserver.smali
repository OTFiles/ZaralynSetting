.class Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "StayAwakePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/StayAwakePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mStayAwakeUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/development/StayAwakePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/StayAwakePreferenceController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/development/StayAwakePreferenceController;

    .line 140
    iput-object p1, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->this$0:Lcom/android/settings/development/StayAwakePreferenceController;

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 137
    const-string v0, "stay_on_while_plugged_in"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->mStayAwakeUri:Landroid/net/Uri;

    .line 142
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 156
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->mStayAwakeUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->this$0:Lcom/android/settings/development/StayAwakePreferenceController;

    iget-object v1, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->this$0:Lcom/android/settings/development/StayAwakePreferenceController;

    invoke-static {v1}, Lcom/android/settings/development/StayAwakePreferenceController;->access$100(Lcom/android/settings/development/StayAwakePreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/development/StayAwakePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 160
    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .line 145
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->this$0:Lcom/android/settings/development/StayAwakePreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/StayAwakePreferenceController;->access$000(Lcom/android/settings/development/StayAwakePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 146
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->mStayAwakeUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 152
    :goto_0
    return-void
.end method
