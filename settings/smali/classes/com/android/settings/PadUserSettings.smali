.class public Lcom/android/settings/PadUserSettings;
.super Landroid/app/Fragment;
.source "PadUserSettings.java"


# instance fields
.field public final REQUEST_PARENT_PASSWORD_CODE:I

.field public final REQUEST_PARENT_PASSWORD_NEW_SET:I

.field public btn_pad_user_adult:Landroid/widget/TextView;

.field public btn_pad_user_student:Landroid/widget/TextView;

.field public isOnPaused:Z

.field private mBtnClickListener:Landroid/view/View$OnClickListener;

.field public pad_user_adult_mode:Landroid/widget/RelativeLayout;

.field public pad_user_student_mode:Landroid/widget/RelativeLayout;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PadUserSettings;->isOnPaused:Z

    .line 62
    const/16 v0, 0x271a

    iput v0, p0, Lcom/android/settings/PadUserSettings;->REQUEST_PARENT_PASSWORD_CODE:I

    .line 63
    const/16 v0, 0x271b

    iput v0, p0, Lcom/android/settings/PadUserSettings;->REQUEST_PARENT_PASSWORD_NEW_SET:I

    .line 71
    const-string v0, "content://com.readboy.parentmanager.AppContentProvider/user_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PadUserSettings;->uri:Landroid/net/Uri;

    .line 144
    new-instance v0, Lcom/android/settings/PadUserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PadUserSettings$1;-><init>(Lcom/android/settings/PadUserSettings;)V

    iput-object v0, p0, Lcom/android/settings/PadUserSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public exchangeDreamLauncherForModeChange()V
    .locals 6

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/PadUserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 134
    .local v0, "activity":Landroid/app/Activity;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 135
    .local v1, "mHomeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    const-string v2, "launcher_mode"

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dream_launcher_mode_lable"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 141
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 142
    :goto_0
    return-void
.end method

.method public getParentPassword()Ljava/lang/String;
    .locals 9

    .line 74
    const/4 v0, 0x0

    move-object v1, v0

    .line 76
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/PadUserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 77
    .local v3, "mResolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/PadUserSettings;->uri:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "_id > ? "

    const-string v2, "0"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 78
    if-eqz v1, :cond_1

    .line 79
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    const-string v2, "password"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 82
    .local v0, "password":Ljava/lang/String;
    nop

    .line 88
    if-eqz v1, :cond_0

    .line 90
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 93
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 94
    :goto_0
    const/4 v1, 0x0

    .line 82
    :cond_0
    return-object v0

    .line 88
    .end local v0
    .end local v3
    :cond_1
    if-eqz v1, :cond_3

    .line 90
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 91
    :catch_1
    move-exception v2

    goto :goto_3

    .line 88
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 90
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 93
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 91
    :catch_2
    move-exception v2

    .line 94
    :goto_1
    const/4 v1, 0x0

    :cond_2
    throw v0

    .line 85
    :catch_3
    move-exception v2

    .line 88
    if-eqz v1, :cond_3

    .line 90
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 93
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    goto :goto_3

    .line 91
    :catch_4
    move-exception v2

    .line 94
    :goto_3
    const/4 v1, 0x0

    .line 97
    :cond_3
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 187
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 188
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "=====divhee===============onActivityResult======="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 212
    :pswitch_0    # 0x271b
    if-eq p2, v1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/PadUserSettings;->getParentPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    const/4 p2, 0x1

    .line 218
    :cond_0
    if-ne p2, v1, :cond_2

    .line 220
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dream_launcher_mode_lable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dream_launcher_mode_lable"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 223
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 224
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/PadUserSettings;->updateNavigationBarStatus()V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/PadUserSettings;->exchangeDreamLauncherForModeChange()V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/PadUserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 191
    :pswitch_1    # 0x271a
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 193
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.SET_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v1, "com.readboy.parentmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const/16 v1, 0x271b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/PadUserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 197
    :catch_1
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====divhee==========pad_user_adult_mode====14="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0
    :goto_1
    goto :goto_3

    .line 200
    :cond_1
    if-ne p2, v1, :cond_2

    .line 202
    :try_start_2
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dream_launcher_mode_lable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dream_launcher_mode_lable"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 205
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 204
    :catch_2
    move-exception v0

    .line 206
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/PadUserSettings;->updateNavigationBarStatus()V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/PadUserSettings;->exchangeDreamLauncherForModeChange()V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/PadUserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 230
    :cond_2
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_1    # 0x271a
        :pswitch_0    # 0x271b
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 103
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/PadUserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, "activity":Landroid/app/Activity;
    const v1, 0x7f0d0140

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, "parent":Landroid/view/View;
    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/PadUserSettings;->btn_pad_user_student:Landroid/widget/TextView;

    .line 112
    const v2, 0x7f0a00a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/PadUserSettings;->btn_pad_user_adult:Landroid/widget/TextView;

    .line 114
    const v2, 0x7f0a02e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/PadUserSettings;->pad_user_student_mode:Landroid/widget/RelativeLayout;

    .line 115
    iget-object v2, p0, Lcom/android/settings/PadUserSettings;->pad_user_student_mode:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/settings/PadUserSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v2, 0x7f0a02df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/PadUserSettings;->pad_user_adult_mode:Landroid/widget/RelativeLayout;

    .line 117
    iget-object v2, p0, Lcom/android/settings/PadUserSettings;->pad_user_adult_mode:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/settings/PadUserSettings;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v2, 0x7f0a02e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    const v2, 0x7f0a027a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/PadUserSettings;->updateNavigationBarStatus()V

    .line 125
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .line 284
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 286
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 302
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PadUserSettings;->isOnPaused:Z

    .line 304
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 296
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/PadUserSettings;->isOnPaused:Z

    .line 298
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 290
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 292
    return-void
.end method

.method public runCheckParentPassword(I)I
    .locals 4
    .param p1, "request"    # I

    .line 239
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/PadUserSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 241
    return v1

    .line 243
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isParentMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isDreamMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dream_launcher_mode_lable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/PadUserSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 246
    return v1

    .line 250
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/PadUserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 253
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 257
    .end local v0
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 254
    :catch_1
    move-exception v0

    .line 255
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 256
    const-string v1, ""

    const-string v2, "====divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v0
    nop

    .line 260
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateNavigationBarStatus()V
    .locals 6

    .line 267
    const/4 v0, 0x2

    move v1, v0

    .line 269
    .local v1, "iRet":I
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dream_launcher_mode_lable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 271
    goto :goto_0

    .line 270
    :catch_0
    move-exception v2

    .line 273
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    iget-object v4, p0, Lcom/android/settings/PadUserSettings;->btn_pad_user_student:Landroid/widget/TextView;

    if-ne v1, v0, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 275
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 274
    :catch_1
    move-exception v4

    .line 277
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/android/settings/PadUserSettings;->btn_pad_user_adult:Landroid/widget/TextView;

    if-eq v1, v0, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 279
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 278
    :catch_2
    move-exception v0

    .line 280
    :goto_3
    return-void
.end method
