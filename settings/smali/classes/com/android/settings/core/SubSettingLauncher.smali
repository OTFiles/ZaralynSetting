.class public Lcom/android/settings/core/SubSettingLauncher;
.super Ljava/lang/Object;
.source "SubSettingLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

.field private mLaunched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/android/settings/core/SubSettingLauncher;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    invoke-direct {v0}, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;-><init>()V

    iput-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    .line 47
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findActivity(Landroid/content/Context;)Lcom/android/settings/SettingsActivity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 139
    instance-of v0, p0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 140
    move-object v0, p0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    return-object v0

    .line 142
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 143
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    .line 144
    .local v0, "wrapper":Landroid/content/ContextWrapper;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/core/SubSettingLauncher;->findActivity(Landroid/content/Context;)Lcom/android/settings/SettingsActivity;

    move-result-object v1

    return-object v1

    .line 146
    .end local v0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private launchForResult(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "listener"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .line 201
    invoke-virtual {p1, p2, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 202
    return-void
.end method


# virtual methods
.method public addFlags(I)Lcom/android/settings/core/SubSettingLauncher;
    .locals 2
    .param p1, "flags"    # I

    .line 92
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->flags:I

    .line 93
    return-object p0
.end method

.method public launch()V
    .locals 11

    .line 102
    iget-boolean v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunched:Z

    if-nez v0, :cond_7

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunched:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v1

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->userHandle:Landroid/os/UserHandle;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->userHandle:Landroid/os/UserHandle;

    .line 111
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v2, v4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 112
    .local v2, "launchAsUser":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v4, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mResultListener:Landroid/app/Fragment;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 114
    .local v0, "launchForResult":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/core/SubSettingLauncher;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/core/SubSettingLauncher;->findActivity(Landroid/content/Context;)Lcom/android/settings/SettingsActivity;

    move-result-object v3

    .line 116
    .local v3, "activity":Lcom/android/settings/SettingsActivity;
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v6, v6, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->destinationName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "=======divhee================launch==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v6, v6, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->destinationName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/SettingsActivity;->checkValidFragment(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v4, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v4, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->titleResId:I

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v4, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_2

    .line 119
    const v4, 0x7f120cd0

    invoke-virtual {p0, v4}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 121
    :cond_2
    iget-object v4, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v4, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->destinationName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v4, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->destinationName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/SettingsActivity;->checkValidFragment(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 123
    iget-object v4, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v5, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->destinationName:Ljava/lang/String;

    .line 124
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v7, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->titleResId:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 123
    move-object v4, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 125
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 126
    iget-object v4, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v4, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->userHandle:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v5, v5, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mResultListener:Landroid/app/Fragment;

    iget-object v6, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v6, v6, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mRequestCode:I

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/android/settings/core/SubSettingLauncher;->launchForResultAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 128
    :cond_4
    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    .line 129
    iget-object v4, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v4, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/core/SubSettingLauncher;->launchAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 130
    :cond_5
    if-nez v2, :cond_6

    if-eqz v0, :cond_6

    .line 131
    iget-object v4, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v4, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mResultListener:Landroid/app/Fragment;

    iget-object v5, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v5, v5, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mRequestCode:I

    invoke-direct {p0, v4, v1, v5}, Lcom/android/settings/core/SubSettingLauncher;->launchForResult(Landroid/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_2

    .line 133
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->launch(Landroid/content/Intent;)V

    .line 136
    :goto_2
    return-void

    .line 103
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This launcher has already been executed. Do not reuse"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method launch(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 184
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method launchAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 189
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    const v0, 0x8000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 192
    return-void
.end method

.method launchForResultAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/app/Fragment;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "resultListener"    # Landroid/app/Fragment;
    .param p4, "requestCode"    # I

    .line 197
    invoke-virtual {p3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p2}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 198
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;
    .locals 1
    .param p1, "arguments"    # Landroid/os/Bundle;

    .line 76
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->arguments:Landroid/os/Bundle;

    .line 77
    return-object p0
.end method

.method public setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->destinationName:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public setResultListener(Landroid/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;
    .locals 1
    .param p1, "listener"    # Landroid/app/Fragment;
    .param p2, "resultRequestCode"    # I

    .line 86
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput p2, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mRequestCode:I

    .line 87
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mResultListener:Landroid/app/Fragment;

    .line 88
    return-object p0
.end method

.method public setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;
    .locals 1
    .param p1, "sourceMetricsCategory"    # I

    .line 81
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->sourceMetricsCategory:I

    .line 82
    return-object p0
.end method

.method public setTitle(I)Lcom/android/settings/core/SubSettingLauncher;
    .locals 1
    .param p1, "titleResId"    # I

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/String;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 66
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->title:Ljava/lang/CharSequence;

    .line 67
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;I)Lcom/android/settings/core/SubSettingLauncher;
    .locals 2
    .param p1, "titlePackageName"    # Ljava/lang/String;
    .param p2, "titleResId"    # I

    .line 59
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->titleResPackageName:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput p2, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->titleResId:I

    .line 61
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->title:Ljava/lang/CharSequence;

    .line 62
    return-object p0
.end method

.method public setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 97
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->userHandle:Landroid/os/UserHandle;

    .line 98
    return-object p0
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 3

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/core/SubSettingLauncher;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->destinationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 156
    const-string v1, ":android:show_fragment"

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->destinationName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->sourceMetricsCategory:I

    if-ltz v1, :cond_2

    .line 161
    const-string v1, ":settings:source_metrics"

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->sourceMetricsCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->arguments:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->arguments:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 168
    :cond_0
    const-string v1, ":android:show_fragment_args"

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->arguments:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 169
    const-string v1, ":settings:show_fragment_title_res_package_name"

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->titleResPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->titleResId:I

    if-lez v1, :cond_1

    .line 172
    const-string v1, ":settings:show_fragment_title_resid"

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->titleResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    :cond_1
    const-string v1, ":android:show_fragment_title"

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 176
    const-string v1, ":settings:show_fragment_as_shortcut"

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-boolean v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->isShortCut:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->flags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    return-object v0

    .line 159
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Source metrics category must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Destination fragment must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
