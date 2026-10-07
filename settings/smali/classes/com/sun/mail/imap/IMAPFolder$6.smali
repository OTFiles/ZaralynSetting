.class Lcom/sun/mail/imap/IMAPFolder$6;
.super Ljava/lang/Object;
.source "IMAPFolder.java"

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IMAPFolder;->create(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;

.field private final synthetic val$sep:C

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;IC)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$6;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iput p2, p0, Lcom/sun/mail/imap/IMAPFolder$6;->val$type:I

    iput-char p3, p0, Lcom/sun/mail/imap/IMAPFolder$6;->val$sep:C

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 728
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder$6;->val$type:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder$6;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v1, v1, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder$6;->val$sep:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->create(Ljava/lang/String;)V

    goto :goto_0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$6;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->create(Ljava/lang/String;)V

    .line 737
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder$6;->val$type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 740
    const-string v0, ""

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder$6;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v1, v1, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    .line 741
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-boolean v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz v1, :cond_1

    .end local v0
    goto :goto_0

    .line 744
    .restart local v0
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder$6;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v1, v1, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->delete(Ljava/lang/String;)V

    .line 745
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    const-string v2, "Unsupported type"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 749
    .end local v0
    :cond_2
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method
