.class public final Lcom/sun/mail/imap/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/Utility$Condition;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
    .locals 8
    .param p0, "msgs"    # [Ljavax/mail/Message;
    .param p1, "cond"    # Lcom/sun/mail/imap/Utility$Condition;

    .line 76
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 80
    .local v0, "v":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    .line 120
    .end local v2
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const/4 v1, 0x0

    return-object v1

    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/protocol/MessageSet;

    .line 124
    .local v1, "sets":[Lcom/sun/mail/imap/protocol/MessageSet;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 125
    return-object v1

    .line 81
    .end local v1
    .restart local v2
    :cond_1
    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 82
    .local v3, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    goto :goto_3

    .line 85
    :cond_2
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    .line 87
    .local v4, "current":I
    if-eqz p1, :cond_3

    invoke-interface {p1, v3}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 88
    goto :goto_3

    .line 90
    :cond_3
    new-instance v5, Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-direct {v5}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V

    .line 91
    .local v5, "set":Lcom/sun/mail/imap/protocol/MessageSet;
    iput v4, v5, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 94
    :goto_1
    add-int/lit8 v2, v2, 0x1

    array-length v6, p0

    if-lt v2, v6, :cond_4

    goto :goto_2

    .line 96
    :cond_4
    aget-object v6, p0, v2

    move-object v3, v6

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 98
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 99
    goto :goto_1

    .line 100
    :cond_5
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v6

    .line 103
    .local v6, "next":I
    if-eqz p1, :cond_6

    invoke-interface {p1, v3}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 104
    goto :goto_1

    .line 106
    :cond_6
    add-int/lit8 v7, v4, 0x1

    if-ne v6, v7, :cond_7

    .line 107
    move v4, v6

    goto :goto_1

    .line 112
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 113
    nop

    .line 116
    .end local v6
    :goto_2
    iput v4, v5, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 117
    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 80
    .end local v4
    .end local v5
    :goto_3
    add-int/2addr v2, v1

    .end local v3
    goto :goto_0
.end method

.method public static toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 11
    .param p0, "msgs"    # [Ljavax/mail/Message;

    .line 134
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 138
    .local v0, "v":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    .line 171
    .end local v2
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const/4 v1, 0x0

    return-object v1

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 175
    .local v1, "sets":[Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 176
    return-object v1

    .line 139
    .end local v1
    .restart local v2
    :cond_1
    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 140
    .local v3, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    goto :goto_3

    .line 143
    :cond_2
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v4

    .line 145
    .local v4, "current":J
    new-instance v6, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v6}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    .line 146
    .local v6, "set":Lcom/sun/mail/imap/protocol/UIDSet;
    iput-wide v4, v6, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 149
    :goto_1
    add-int/lit8 v2, v2, 0x1

    array-length v7, p0

    if-lt v2, v7, :cond_3

    goto :goto_2

    .line 151
    :cond_3
    aget-object v7, p0, v2

    move-object v3, v7

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 153
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 154
    goto :goto_1

    .line 155
    :cond_4
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v7

    .line 157
    .local v7, "next":J
    const-wide/16 v9, 0x1

    add-long/2addr v9, v4

    cmp-long v9, v7, v9

    if-nez v9, :cond_5

    .line 158
    move-wide v4, v7

    goto :goto_1

    .line 163
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 164
    nop

    .line 167
    .end local v7
    :goto_2
    iput-wide v4, v6, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 168
    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 138
    .end local v4
    .end local v6
    :goto_3
    add-int/2addr v2, v1

    .end local v3
    goto :goto_0
.end method
