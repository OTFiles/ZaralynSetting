.class Lcom/android/settings/SettingsBootCompletedReceiver$5;
.super Ljava/lang/Object;
.source "SettingsBootCompletedReceiver.java"

# interfaces
.implements Lcom/android/settings/SendEmailThread$OnSendEmailEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsBootCompletedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsBootCompletedReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsBootCompletedReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsBootCompletedReceiver;

    .line 2015
    iput-object p1, p0, Lcom/android/settings/SettingsBootCompletedReceiver$5;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "emailId"    # Ljava/lang/String;
    .param p2, "emailTitle"    # Ljava/lang/String;

    .line 2019
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=====divhee=======onSendEnd=======onSendEmailEvent1======="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    return-void
.end method
