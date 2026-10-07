.class public Lcom/sun/mail/imap/protocol/UIDSet;
.super Ljava/lang/Object;
.source "UIDSet.java"


# instance fields
.field public end:J

.field public start:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 57
    iput-wide p3, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 58
    return-void
.end method

.method public static createUIDSets([J)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 10
    .param p0, "msgs"    # [J

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 74
    .local v0, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 88
    .local v2, "msgsets":[Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-virtual {v0, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 89
    return-object v2

    .line 75
    .end local v2
    :cond_0
    new-instance v2, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v2}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    .line 76
    .local v2, "ms":Lcom/sun/mail/imap/protocol/UIDSet;
    aget-wide v3, p0, v1

    iput-wide v3, v2, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 79
    add-int/lit8 v3, v1, 0x1

    .local v3, "j":I
    :goto_1
    array-length v4, p0

    if-lt v3, v4, :cond_1

    goto :goto_2

    .line 80
    :cond_1
    aget-wide v4, p0, v3

    add-int/lit8 v6, v3, -0x1

    aget-wide v6, p0, v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 81
    nop

    .line 83
    :goto_2
    add-int/lit8 v4, v3, -0x1

    aget-wide v4, p0, v4

    iput-wide v4, v2, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 84
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 85
    add-int/lit8 v1, v3, -0x1

    .line 74
    .end local v2
    add-int/lit8 v1, v1, 0x1

    .end local v3
    goto :goto_0

    .line 79
    .restart local v2
    .restart local v3
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static size([Lcom/sun/mail/imap/protocol/UIDSet;)J
    .locals 5
    .param p0, "msgsets"    # [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 127
    const-wide/16 v0, 0x0

    .line 129
    .local v0, "count":J
    if-nez p0, :cond_0

    .line 130
    const-wide/16 v2, 0x0

    return-wide v2

    .line 132
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    .line 135
    .end local v2
    return-wide v0

    .line 133
    .restart local v2
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/UIDSet;->size()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;
    .locals 8
    .param p0, "msgsets"    # [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 96
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 100
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v1, "s":Ljava/lang/StringBuffer;
    array-length v2, p0

    .line 105
    .local v2, "size":I
    :goto_0
    aget-object v3, p0, v0

    iget-wide v3, v3, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 106
    .local v3, "start":J
    aget-object v5, p0, v0

    iget-wide v5, v5, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 108
    .local v5, "end":J
    cmp-long v7, v5, v3

    if-lez v7, :cond_1

    .line 109
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v7, 0x3a

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 113
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 114
    if-lt v0, v2, :cond_2

    .line 115
    nop

    .line 104
    nop

    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 117
    :cond_2
    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    .end local v3
    .end local v5
    goto :goto_0

    .line 97
    .end local v0
    .end local v1
    .end local v2
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public size()J
    .locals 4

    .line 64
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    iget-wide v2, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method
