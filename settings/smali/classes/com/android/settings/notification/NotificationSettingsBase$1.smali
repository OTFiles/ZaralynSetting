.class Lcom/android/settings/notification/NotificationSettingsBase$1;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSettingsBase;->populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroid/support/v7/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettingsBase;

.field final synthetic val$channel:Landroid/app/NotificationChannel;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;Landroid/app/NotificationChannel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationSettingsBase;

    .line 297
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->val$channel:Landroid/app/NotificationChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "o"    # Ljava/lang/Object;

    .line 301
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 302
    .local v0, "value":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 303
    .local v1, "importance":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->val$channel:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 304
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->val$channel:Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 306
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget v4, v4, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->val$channel:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 308
    const/4 v2, 0x1

    return v2
.end method
