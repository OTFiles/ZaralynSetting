.class public Lcom/android/settings/notification/AlarmRingtonePreferenceController;
.super Lcom/android/settings/notification/RingtonePreferenceControllerBase;
.source "AlarmRingtonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, "alarm_ringtone"

    return-object v0
.end method

.method public getRingtoneType()I
    .locals 1

    .line 37
    const/4 v0, 0x4

    return v0
.end method
