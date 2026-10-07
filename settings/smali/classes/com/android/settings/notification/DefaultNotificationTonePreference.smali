.class public Lcom/android/settings/notification/DefaultNotificationTonePreference;
.super Lcom/android/settings/DefaultRingtonePreference;
.source "DefaultNotificationTonePreference.java"


# instance fields
.field private mRingtone:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 55
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v1, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->mRingtone:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/settings/notification/DefaultNotificationTonePreference;->mRingtone:Landroid/net/Uri;

    return-object v0
.end method
