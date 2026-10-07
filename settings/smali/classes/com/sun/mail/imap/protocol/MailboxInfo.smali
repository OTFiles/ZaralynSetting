.class public Lcom/sun/mail/imap/protocol/MailboxInfo;
.super Ljava/lang/Object;
.source "MailboxInfo.java"


# instance fields
.field public availableFlags:Ljavax/mail/Flags;

.field public first:I

.field public mode:I

.field public permanentFlags:Ljavax/mail/Flags;

.field public recent:I

.field public total:I

.field public uidnext:J

.field public uidvalidity:J


# direct methods
.method public constructor <init>([Lcom/sun/mail/iap/Response;)V
    .locals 7
    .param p1, "r"    # [Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    .line 55
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    .line 57
    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    .line 58
    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I

    .line 59
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    .line 60
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_2

    .line 121
    .end local v1
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljavax/mail/Flags;

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    invoke-direct {v0, v1}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    goto :goto_1

    .line 125
    :cond_0
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    .line 127
    :cond_1
    :goto_1
    return-void

    .line 65
    .restart local v1
    :cond_2
    aget-object v2, p1, v1

    if-eqz v2, :cond_d

    aget-object v2, p1, v1

    instance-of v2, v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v2, :cond_3

    .line 66
    goto/16 :goto_3

    .line 68
    :cond_3
    aget-object v2, p1, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 70
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v3, "EXISTS"

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 71
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    .line 72
    aput-object v0, p1, v1

    goto/16 :goto_3

    .line 74
    :cond_4
    const-string v3, "RECENT"

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 75
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    .line 76
    aput-object v0, p1, v1

    goto/16 :goto_3

    .line 78
    :cond_5
    const-string v3, "FLAGS"

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 79
    new-instance v3, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v3, v2}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    .line 80
    aput-object v0, p1, v1

    goto :goto_3

    .line 82
    :cond_6
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isUnTagged()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isOK()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 89
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 91
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B

    move-result v3

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_7

    .line 92
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    .line 93
    goto :goto_3

    .line 96
    :cond_7
    const/4 v3, 0x1

    .line 97
    .local v3, "handled":Z
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "s":Ljava/lang/String;
    const-string v5, "UNSEEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 99
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v5

    iput v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I

    goto :goto_2

    .line 100
    :cond_8
    const-string v5, "UIDVALIDITY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 101
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    goto :goto_2

    .line 102
    :cond_9
    const-string v5, "PERMANENTFLAGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 103
    new-instance v5, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v5, v2}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    iput-object v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    goto :goto_2

    .line 104
    :cond_a
    const-string v5, "UIDNEXT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 105
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    goto :goto_2

    .line 107
    :cond_b
    const/4 v3, 0x0

    .line 109
    :goto_2
    if-eqz v3, :cond_c

    .line 110
    aput-object v0, p1, v1

    goto :goto_3

    .line 112
    :cond_c
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    .line 64
    .end local v2
    .end local v3
    .end local v4
    :cond_d
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
