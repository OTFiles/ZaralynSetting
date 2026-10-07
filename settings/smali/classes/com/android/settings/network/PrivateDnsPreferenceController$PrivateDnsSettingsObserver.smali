.class Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PrivateDnsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/PrivateDnsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateDnsSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/PrivateDnsPreferenceController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .line 137
    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    .line 138
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 139
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 143
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsPreferenceController$PrivateDnsSettingsObserver;->this$0:Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->access$000(Lcom/android/settings/network/PrivateDnsPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/PrivateDnsPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 146
    :cond_0
    return-void
.end method
