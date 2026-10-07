.class public Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImportanceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettingsBase;


# direct methods
.method protected constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationSettingsBase;

    .line 409
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected onImportanceChanged()V
    .locals 9

    .line 411
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 412
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationSettingsBase;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/NotificationPreferenceController;

    .line 413
    .local v2, "controller":Lcom/android/settings/notification/NotificationPreferenceController;
    invoke-virtual {v2, v0}, Lcom/android/settings/notification/NotificationPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 414
    .end local v2
    goto :goto_0

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettingsBase;->access$100(Lcom/android/settings/notification/NotificationSettingsBase;)V

    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, "hideDynamicFields":Z
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v2, :cond_1

    goto :goto_2

    .line 421
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_3

    .line 422
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    move v1, v2

    goto :goto_3

    .line 423
    :cond_3
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v2, :cond_5

    .line 424
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    goto :goto_3

    .line 419
    :cond_4
    :goto_2
    const/4 v1, 0x1

    .line 427
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationSettingsBase;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/Preference;

    .line 428
    .local v5, "preference":Landroid/support/v7/preference/Preference;
    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v7}, Lcom/android/settings/notification/NotificationSettingsBase;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    if-nez v1, :cond_6

    move v8, v4

    goto :goto_5

    :cond_6
    move v8, v3

    :goto_5
    invoke-virtual {v6, v7, v5, v8}, Lcom/android/settings/notification/NotificationSettingsBase;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;Z)V

    .line 429
    .end local v5
    goto :goto_4

    .line 430
    :cond_7
    return-void
.end method
