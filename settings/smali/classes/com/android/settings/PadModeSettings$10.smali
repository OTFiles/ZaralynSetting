.class Lcom/android/settings/PadModeSettings$10;
.super Ljava/lang/Object;
.source "PadModeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PadModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PadModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PadModeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/PadModeSettings;

    .line 1204
    iput-object p1, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 1207
    if-nez p1, :cond_0

    .line 1208
    return-void

    .line 1210
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0099

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a00a1

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a02d9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v4, 0x3

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_1

    .line 1367
    :pswitch_0    # 0x7f0a02d6
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0, v4}, Lcom/android/settings/PadModeSettings;->access$1102(Lcom/android/settings/PadModeSettings;I)I

    .line 1368
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1369
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f120b5f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1380
    goto/16 :goto_1

    .line 1332
    .end local v0
    :pswitch_1    # 0x7f0a047f 0x7f0a02d5
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "export_standard_launcher_mode_lable"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1333
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dream_launcher_mode_lable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1334
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "Launch_version"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1335
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/PadModeSettings;->updateCurrentLauncherStatus()V

    .line 1336
    goto/16 :goto_1

    .line 1340
    :pswitch_2    # 0x7f0a047e 0x7f0a02d4
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "export_standard_launcher_mode_lable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1341
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dream_launcher_mode_lable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1342
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Launch_version"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1343
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/PadModeSettings;->updateCurrentLauncherStatus()V

    .line 1344
    goto/16 :goto_1

    .line 1348
    :pswitch_3    # 0x7f0a047d 0x7f0a02d3
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "export_standard_launcher_mode_lable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1349
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dream_launcher_mode_lable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1350
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Launch_version"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1351
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/PadModeSettings;->updateCurrentLauncherStatus()V

    .line 1352
    goto/16 :goto_1

    .line 1213
    :pswitch_4    # 0x7f0a009d
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$000(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    .line 1214
    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$200(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$000(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$300(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1215
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$200(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1216
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$000(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1217
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$300(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1218
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-virtual {v1}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    .line 1220
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u662f\u5426\u5207\u6362\u6a21\u5f0f\uff1f"

    .line 1221
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lcom/android/settings/PadModeSettings$10$4;

    invoke-direct {v2, p0}, Lcom/android/settings/PadModeSettings$10$4;-><init>(Lcom/android/settings/PadModeSettings$10;)V

    .line 1222
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/android/settings/PadModeSettings$10$3;

    invoke-direct {v2, p0}, Lcom/android/settings/PadModeSettings$10$3;-><init>(Lcom/android/settings/PadModeSettings$10;)V

    .line 1232
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/PadModeSettings$10$2;

    invoke-direct {v1, p0}, Lcom/android/settings/PadModeSettings$10$2;-><init>(Lcom/android/settings/PadModeSettings$10;)V

    .line 1241
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/PadModeSettings$10$1;

    invoke-direct {v1, p0}, Lcom/android/settings/PadModeSettings$10$1;-><init>(Lcom/android/settings/PadModeSettings$10;)V

    .line 1249
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1256
    .local v0, "builderStandard":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/PadModeSettings;->access$702(Lcom/android/settings/PadModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1257
    iget-object v1, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v1}, Lcom/android/settings/PadModeSettings;->access$700(Lcom/android/settings/PadModeSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1258
    .end local v0
    goto/16 :goto_1

    .line 1322
    :pswitch_5    # 0x7f0a009c
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dream_launcher_mode_lable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/settings/PadModeSettings;->access$1002(Lcom/android/settings/PadModeSettings;I)I

    .line 1323
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$1000(Lcom/android/settings/PadModeSettings;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    const/16 v1, 0x2720

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/PadModeSettings;->realexchangeParentModeOrLearning(Landroid/view/View;I)V

    .line 1327
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto/16 :goto_1

    .line 1326
    :catch_0
    move-exception v0

    .line 1328
    goto/16 :goto_1

    .line 1265
    :pswitch_6    # 0x7f0a009b
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$200(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    .line 1266
    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$200(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$000(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$300(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1267
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$200(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1268
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$000(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1269
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$300(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1270
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-virtual {v1}, Lcom/android/settings/PadModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    .line 1272
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u662f\u5426\u5207\u6362\u6a21\u5f0f\uff1f"

    .line 1273
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lcom/android/settings/PadModeSettings$10$8;

    invoke-direct {v2, p0}, Lcom/android/settings/PadModeSettings$10$8;-><init>(Lcom/android/settings/PadModeSettings$10;)V

    .line 1274
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/android/settings/PadModeSettings$10$7;

    invoke-direct {v2, p0}, Lcom/android/settings/PadModeSettings$10$7;-><init>(Lcom/android/settings/PadModeSettings$10;)V

    .line 1284
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/PadModeSettings$10$6;

    invoke-direct {v1, p0}, Lcom/android/settings/PadModeSettings$10$6;-><init>(Lcom/android/settings/PadModeSettings$10;)V

    .line 1293
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/PadModeSettings$10$5;

    invoke-direct {v1, p0}, Lcom/android/settings/PadModeSettings$10$5;-><init>(Lcom/android/settings/PadModeSettings$10;)V

    .line 1301
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1308
    .local v0, "builderExport":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/PadModeSettings;->access$702(Lcom/android/settings/PadModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1309
    iget-object v1, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v1}, Lcom/android/settings/PadModeSettings;->access$700(Lcom/android/settings/PadModeSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1310
    .end local v0
    goto :goto_1

    .line 1355
    :cond_2
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    const/16 v1, 0x271f

    invoke-virtual {v0, v1}, Lcom/android/settings/PadModeSettings;->runCheckParentPassword(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 1357
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1358
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.SET_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1359
    const-string v1, "com.readboy.parentmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1360
    iget-object v1, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    const/16 v2, 0x271d

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/PadModeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1361
    :catch_1
    move-exception v0

    .line 1362
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====divhee==========pad_user_adult_mode====4="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    .end local v0
    :goto_0
    goto :goto_1

    .line 1418
    :cond_3
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$10;->this$0:Lcom/android/settings/PadModeSettings;

    const/16 v1, 0x271a

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/PadModeSettings;->realexchangeParentModeOrLearning(Landroid/view/View;I)V

    .line 1430
    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a009b
        :pswitch_6    # 0x7f0a009b
        :pswitch_5    # 0x7f0a009c
        :pswitch_4    # 0x7f0a009d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a02d3
        :pswitch_3    # 0x7f0a02d3
        :pswitch_2    # 0x7f0a02d4
        :pswitch_1    # 0x7f0a02d5
        :pswitch_0    # 0x7f0a02d6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0a047d
        :pswitch_3    # 0x7f0a047d
        :pswitch_2    # 0x7f0a047e
        :pswitch_1    # 0x7f0a047f
    .end packed-switch
.end method
