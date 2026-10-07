.class Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BadgingNotificationPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/BadgingNotificationPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final NOTIFICATION_BADGING_URI:Landroid/net/Uri;

.field private final mPreference:Landroid/support/v7/preference/Preference;

.field final synthetic this$0:Lcom/android/settings/notification/BadgingNotificationPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/BadgingNotificationPreferenceController;Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/notification/BadgingNotificationPreferenceController;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .line 115
    iput-object p1, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/BadgingNotificationPreferenceController;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 110
    const-string v0, "notification_badging"

    .line 111
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    .line 117
    iput-object p2, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;->mPreference:Landroid/support/v7/preference/Preference;

    .line 118
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 130
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/BadgingNotificationPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 134
    :cond_0
    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "register"    # Z

    .line 121
    if-eqz p2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$SettingObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 126
    :goto_0
    return-void
.end method
