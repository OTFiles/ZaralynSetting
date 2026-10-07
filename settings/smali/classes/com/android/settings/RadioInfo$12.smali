.class Lcom/android/settings/RadioInfo$12;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/RadioInfo;

    .line 1219
    iput-object p1, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1221
    iget-object v0, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$3000(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v0

    .line 1222
    .local v0, "isImsRegistered":Z
    iget-object v1, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$3000(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v1

    .line 1223
    .local v1, "availableVolte":Z
    iget-object v2, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$3000(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v2

    .line 1224
    .local v2, "availableWfc":Z
    iget-object v3, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v3}, Lcom/android/settings/RadioInfo;->access$3000(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v3

    .line 1225
    .local v3, "availableVt":Z
    iget-object v4, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v4}, Lcom/android/settings/RadioInfo;->access$3000(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v4

    .line 1227
    .local v4, "availableUt":Z
    if-eqz v0, :cond_0

    .line 1228
    iget-object v5, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    const v6, 0x7f120ac2

    invoke-virtual {v5, v6}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1229
    :cond_0
    iget-object v5, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    const v6, 0x7f120ac1

    invoke-virtual {v5, v6}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1231
    .local v5, "imsRegString":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    const v7, 0x7f120abe

    invoke-virtual {v6, v7}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1232
    .local v6, "available":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    const v8, 0x7f120abf

    invoke-virtual {v7, v8}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1235
    .local v7, "unavailable":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    const v9, 0x7f120ac0

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    .line 1237
    if-eqz v1, :cond_1

    move-object v11, v6

    goto :goto_1

    :cond_1
    move-object v11, v7

    :goto_1
    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v11, 0x2

    .line 1238
    if-eqz v2, :cond_2

    move-object v13, v6

    goto :goto_2

    :cond_2
    move-object v13, v7

    :goto_2
    aput-object v13, v10, v11

    const/4 v11, 0x3

    .line 1239
    if-eqz v3, :cond_3

    move-object v13, v6

    goto :goto_3

    :cond_3
    move-object v13, v7

    :goto_3
    aput-object v13, v10, v11

    const/4 v11, 0x4

    .line 1240
    if-eqz v4, :cond_4

    move-object v13, v6

    goto :goto_4

    :cond_4
    move-object v13, v7

    :goto_4
    aput-object v13, v10, v11

    .line 1235
    invoke-virtual {v8, v9, v10}, Lcom/android/settings/RadioInfo;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1242
    .local v8, "imsStatus":Ljava/lang/String;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1243
    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    const v11, 0x7f120ac3

    .line 1244
    invoke-virtual {v10, v11}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1245
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 1247
    .local v9, "imsDialog":Landroid/app/AlertDialog;
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 1249
    return v12
.end method
