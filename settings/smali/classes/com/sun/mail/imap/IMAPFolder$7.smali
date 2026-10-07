.class Lcom/sun/mail/imap/IMAPFolder$7;
.super Ljava/lang/Object;
.source "IMAPFolder.java"

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IMAPFolder;->hasNewMessages()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$7;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 791
    const-string v0, ""

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder$7;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v1, v1, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    .line 792
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    if-eqz v0, :cond_1

    .line 793
    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 794
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 795
    :cond_0
    aget-object v1, v0, v1

    iget v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 796
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    .line 800
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder$7;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPFolder;->access$0(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v1

    .line 801
    .local v1, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v2, v1, Lcom/sun/mail/imap/protocol/Status;->recent:I

    if-lez v2, :cond_2

    .line 802
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2

    .line 804
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v2
.end method
