.class Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;
.super Ljava/lang/Object;
.source "DevelopmentSettingsDashboardFragmentPart.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 344
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 12
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 347
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-virtual {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 348
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 349
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$300(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    if-ne p1, v2, :cond_6

    .line 350
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$400(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$500(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)J

    move-result-wide v8

    cmp-long v2, v8, v6

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$500(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v2, v8, v3

    if-gez v2, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$402(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;I)I

    .line 399
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$502(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;J)J

    goto/16 :goto_1

    .line 351
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$408(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)I

    .line 352
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$502(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;J)J

    .line 353
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    if-nez v2, :cond_2

    .line 354
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "step A: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v4}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$600(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nstep B: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v4}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$400(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 356
    :cond_2
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$600(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$400(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)I

    move-result v2

    if-ne v2, v3, :cond_3

    goto/16 :goto_1

    .line 377
    :cond_3
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$600(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$400(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 378
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$402(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;I)I

    .line 379
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2, v6, v7}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$502(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;J)J

    .line 380
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$602(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;I)I

    .line 381
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2, v6, v7}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$702(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;J)J

    .line 383
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_development_settings_full"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_4

    .line 384
    const-string v2, "development_full"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 385
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_danger_frozen_settings_full"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 386
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 387
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_development_settings_full"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 388
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const v2, 0x7f12050d

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsApp;->showAppToastShort(I)V

    goto :goto_1

    .line 389
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_development_settings_full"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 390
    const-string v2, "development_full"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 391
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "show_danger_frozen_settings_full"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 392
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 393
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_development_settings_full"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const v2, 0x7f120604

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsApp;->showAppToastShort(I)V

    .line 433
    :cond_5
    :goto_1
    return v5

    .line 434
    :cond_6
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$800(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-ne p1, v2, :cond_a

    .line 435
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$600(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$700(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)J

    move-result-wide v8

    cmp-long v2, v8, v6

    if-eqz v2, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$700(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v2, v8, v3

    if-gez v2, :cond_7

    goto :goto_2

    .line 444
    :cond_7
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$602(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;I)I

    .line 445
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$702(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;J)J

    .line 446
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$402(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;I)I

    .line 447
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v1, v6, v7}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$502(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;J)J

    goto :goto_3

    .line 436
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$608(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)I

    .line 437
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$702(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;J)J

    .line 438
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$402(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;I)I

    .line 439
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2, v6, v7}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$502(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;J)J

    .line 440
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    if-nez v2, :cond_9

    .line 441
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "step A: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$4;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v4}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$600(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 487
    :cond_9
    :goto_3
    return v5

    .line 490
    :cond_a
    return v1
.end method
