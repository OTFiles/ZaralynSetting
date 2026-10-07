.class public Lcom/sun/mail/imap/IMAPMessage;
.super Ljavax/mail/internet/MimeMessage;
.source "IMAPMessage.java"


# static fields
.field private static EnvelopeCmd:Ljava/lang/String;


# instance fields
.field protected bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

.field private description:Ljava/lang/String;

.field protected envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

.field private headersLoaded:Z

.field private loadedHeaders:Ljava/util/Hashtable;

.field private peek:Z

.field private receivedDate:Ljava/util/Date;

.field protected sectionId:Ljava/lang/String;

.field private seqnum:I

.field private size:I

.field private subject:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    const-string v0, "ENVELOPE INTERNALDATE RFC822.SIZE"

    sput-object v0, Lcom/sun/mail/imap/IMAPMessage;->EnvelopeCmd:Ljava/lang/String;

    .line 82
    return-void
.end method

.method protected constructor <init>(Lcom/sun/mail/imap/IMAPFolder;II)V
    .locals 2
    .param p1, "folder"    # Lcom/sun/mail/imap/IMAPFolder;
    .param p2, "msgnum"    # I
    .param p3, "seqnum"    # I

    .line 125
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    .line 126
    iput p3, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    .line 128
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;)V
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;

    .line 134
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    .line 135
    return-void
.end method

.method private _getBodyStructure()Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .locals 1

    .line 1419
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    return-object v0
.end method

.method private _getEnvelope()Lcom/sun/mail/imap/protocol/ENVELOPE;
    .locals 1

    .line 1415
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    return-object v0
.end method

.method private _getFlags()Ljavax/mail/Flags;
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    return-object v0
.end method

.method private aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p1, "aa"    # [Ljavax/mail/internet/InternetAddress;

    .line 1404
    if-nez p1, :cond_0

    .line 1405
    const/4 v0, 0x0

    return-object v0

    .line 1407
    :cond_0
    invoke-virtual {p1}, [Ljavax/mail/internet/InternetAddress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/internet/InternetAddress;

    return-object v0
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/ENVELOPE;
    .locals 0

    .line 1414
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->_getEnvelope()Lcom/sun/mail/imap/protocol/ENVELOPE;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/IMAPMessage;)Ljavax/mail/Flags;
    .locals 0

    .line 1410
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->_getFlags()Ljavax/mail/Flags;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .locals 0

    .line 1418
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->_getBodyStructure()Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3(Lcom/sun/mail/imap/IMAPMessage;)Z
    .locals 0

    .line 1357
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->areHeadersLoaded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4(Lcom/sun/mail/imap/IMAPMessage;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    return p0
.end method

.method static synthetic access$5(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;)Z
    .locals 0

    .line 1371
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized areHeadersLoaded()Z
    .locals 1

    monitor-enter p0

    .line 1358
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method private static craftHeaderCmd(Lcom/sun/mail/imap/protocol/IMAPProtocol;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .param p1, "hdrs"    # [Ljava/lang/String;

    .line 1232
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "BODY.PEEK[HEADER.FIELDS ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v0, "sb":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 1235
    .end local v0
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "RFC822.HEADER.LINES ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1237
    .restart local v0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-lt v1, v2, :cond_2

    .line 1243
    .end local v1
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1244
    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1246
    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1248
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1238
    .restart local v1
    :cond_2
    if-lez v1, :cond_3

    .line 1239
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1240
    :cond_3
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static fetch(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 27
    .param p0, "folder"    # Lcom/sun/mail/imap/IMAPFolder;
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "fp"    # Ljavax/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 983
    move-object/from16 v2, p2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v0

    .line 984
    .local v3, "command":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .line 985
    .local v0, "first":Z
    const/4 v4, 0x0

    .line 987
    .local v4, "allHeaders":Z
    sget-object v5, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 988
    sget-object v5, Lcom/sun/mail/imap/IMAPMessage;->EnvelopeCmd:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 989
    const/4 v0, 0x0

    .line 991
    :cond_0
    sget-object v5, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 992
    if-eqz v0, :cond_1

    const-string v5, "FLAGS"

    goto :goto_0

    :cond_1
    const-string v5, " FLAGS"

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 993
    const/4 v0, 0x0

    .line 995
    :cond_2
    sget-object v5, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 996
    if-eqz v0, :cond_3

    const-string v5, "BODYSTRUCTURE"

    goto :goto_1

    :cond_3
    const-string v5, " BODYSTRUCTURE"

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 997
    const/4 v0, 0x0

    .line 999
    :cond_4
    sget-object v5, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1000
    if-eqz v0, :cond_5

    const-string v5, "UID"

    goto :goto_2

    :cond_5
    const-string v5, " UID"

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1001
    const/4 v0, 0x0

    .line 1003
    :cond_6
    sget-object v5, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->HEADERS:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1004
    const/4 v4, 0x1

    .line 1005
    iget-object v5, v1, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1006
    if-eqz v0, :cond_7

    .line 1007
    const-string v5, "BODY.PEEK[HEADER]"

    goto :goto_3

    :cond_7
    const-string v5, " BODY.PEEK[HEADER]"

    .line 1006
    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 1009
    :cond_8
    if-eqz v0, :cond_9

    const-string v5, "RFC822.HEADER"

    goto :goto_4

    :cond_9
    const-string v5, " RFC822.HEADER"

    :goto_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1010
    :goto_5
    const/4 v0, 0x0

    .line 1012
    :cond_a
    sget-object v5, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->SIZE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1013
    if-eqz v0, :cond_b

    const-string v5, "RFC822.SIZE"

    goto :goto_6

    :cond_b
    const-string v5, " RFC822.SIZE"

    :goto_6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1014
    const/4 v0, 0x0

    .line 1018
    .end local v0
    .local v5, "first":Z
    :cond_c
    move v5, v0

    const/4 v0, 0x0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    .line 1019
    .local v6, "hdrs":[Ljava/lang/String;
    if-nez v4, :cond_e

    .line 1020
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v6

    .line 1021
    array-length v7, v6

    if-lez v7, :cond_e

    .line 1022
    if-nez v5, :cond_d

    .line 1023
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1024
    :cond_d
    iget-object v7, v1, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-static {v7, v6}, Lcom/sun/mail/imap/IMAPMessage;->craftHeaderCmd(Lcom/sun/mail/imap/protocol/IMAPProtocol;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1028
    :cond_e
    new-instance v7, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;

    invoke-direct {v7, v2}, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;-><init>(Ljavax/mail/FetchProfile;)V

    .line 1031
    .local v7, "condition":Lcom/sun/mail/imap/Utility$Condition;
    iget-object v8, v1, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1035
    move-object/from16 v9, p1

    :try_start_0
    invoke-static {v9, v7}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v10

    .line 1037
    .local v10, "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v10, :cond_f

    .line 1039
    :try_start_1
    monitor-exit v8

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 1031
    .end local v10
    :catchall_0
    move-exception v0

    move-object/from16 v18, v3

    .end local v3
    .end local v5
    .local v18, "command":Ljava/lang/StringBuffer;
    .local v21, "first":Z
    :goto_7
    move/from16 v21, v5

    goto/16 :goto_16

    .line 1041
    .end local v18
    .end local v21
    .restart local v3
    .restart local v5
    .restart local v10
    :cond_f
    :try_start_2
    check-cast v0, [Lcom/sun/mail/iap/Response;

    move-object v11, v0

    .line 1042
    .local v11, "r":[Lcom/sun/mail/iap/Response;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v12, v0

    .line 1045
    .local v12, "v":Ljava/util/Vector;
    :try_start_3
    iget-object v0, v1, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    :try_end_3
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v10, v13}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v11, v0

    goto :goto_8

    .line 1046
    :catch_0
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v21, v5

    move-object/from16 v22, v10

    move-object/from16 v23, v12

    goto/16 :goto_15

    .line 1050
    :catch_1
    move-exception v0

    .line 1051
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v13, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v13

    .line 1048
    .end local v0
    :catch_2
    move-exception v0

    .line 1054
    :goto_8
    if-nez v11, :cond_10

    .line 1055
    monitor-exit v8

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    .line 1057
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    :try_start_6
    array-length v13, v11

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-lt v0, v13, :cond_12

    .line 1160
    .end local v0
    :try_start_7
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1161
    .local v0, "size":I
    if-eqz v0, :cond_11

    .line 1162
    new-array v13, v0, [Lcom/sun/mail/iap/Response;

    .line 1163
    .local v13, "responses":[Lcom/sun/mail/iap/Response;
    invoke-virtual {v12, v13}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1164
    invoke-virtual {v1, v13}, Lcom/sun/mail/imap/IMAPFolder;->handleResponses([Lcom/sun/mail/iap/Response;)V

    .line 1031
    .end local v0
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    :cond_11
    monitor-exit v8

    .line 1168
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    .line 1058
    .local v0, "i":I
    .restart local v10
    .restart local v11
    .restart local v12
    :cond_12
    :try_start_8
    aget-object v13, v11, v0

    if-nez v13, :cond_13

    .line 1059
    nop

    .line 1057
    .end local v3
    .restart local v18
    :goto_a
    move-object/from16 v18, v3

    goto :goto_c

    .line 1060
    .end local v18
    .restart local v3
    :cond_13
    aget-object v13, v11, v0

    instance-of v13, v13, Lcom/sun/mail/imap/protocol/FetchResponse;

    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v13, :cond_14

    .line 1061
    :try_start_9
    aget-object v13, v11, v0

    invoke-virtual {v12, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1062
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_a

    .line 1066
    :cond_14
    :try_start_a
    aget-object v13, v11, v0

    check-cast v13, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1068
    .local v13, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    invoke-virtual {v13}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v14

    .line 1070
    .local v14, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v13}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItemCount()I

    move-result v15

    .line 1071
    .local v15, "count":I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/16 v16, 0x0

    .line 1073
    .local v16, "unsolicitedFlags":Z
    const/16 v17, 0x0

    .local v17, "j":I
    move-object/from16 v18, v3

    move/from16 v3, v17

    .end local v17
    .local v3, "j":I
    .restart local v18
    :goto_b
    if-lt v3, v15, :cond_16

    .line 1155
    .end local v3
    if-eqz v16, :cond_15

    .line 1156
    :try_start_b
    invoke-virtual {v12, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .end local v13
    .end local v14
    .end local v15
    .end local v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_c

    .line 1031
    .end local v0
    .end local v10
    .end local v11
    .end local v12
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 1057
    .restart local v0
    .restart local v10
    .restart local v11
    .restart local v12
    :cond_15
    :goto_c
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v18

    goto :goto_9

    .line 1074
    .restart local v3
    .restart local v13
    .restart local v14
    .restart local v15
    .restart local v16
    :cond_16
    :try_start_c
    invoke-virtual {v13, v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(I)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v17

    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object/from16 v19, v17

    .line 1077
    .local v19, "item":Lcom/sun/mail/imap/protocol/Item;
    move/from16 v20, v0

    move/from16 v21, v5

    move-object/from16 v0, v19

    :try_start_d
    instance-of v5, v0, Ljavax/mail/Flags;

    .end local v5
    .end local v19
    .local v0, "item":Lcom/sun/mail/imap/protocol/Item;
    .local v20, "i":I
    .restart local v21
    if-eqz v5, :cond_19

    .line 1078
    sget-object v5, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1079
    if-nez v14, :cond_17

    goto :goto_d

    .line 1083
    :cond_17
    move-object v5, v0

    check-cast v5, Ljavax/mail/Flags;

    iput-object v5, v14, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    goto :goto_e

    .line 1081
    :cond_18
    :goto_d
    const/4 v5, 0x1

    .line 1073
    .end local v16
    .local v5, "unsolicitedFlags":Z
    move/from16 v16, v5

    .end local v0
    .end local v5
    .end local v10
    .end local v11
    .end local v12
    .restart local v16
    .local v22, "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .local v23, "v":Ljava/util/Vector;
    .local v24, "r":[Lcom/sun/mail/iap/Response;
    :goto_e
    move-object/from16 v22, v10

    move-object/from16 v24, v11

    move-object/from16 v23, v12

    goto/16 :goto_14

    .line 1087
    .end local v22
    .end local v23
    .end local v24
    .restart local v0
    .restart local v10
    .restart local v11
    .restart local v12
    :cond_19
    instance-of v5, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-eqz v5, :cond_1a

    .line 1088
    move-object v5, v0

    check-cast v5, Lcom/sun/mail/imap/protocol/ENVELOPE;

    iput-object v5, v14, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    goto :goto_e

    .line 1089
    :cond_1a
    instance-of v5, v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    if-eqz v5, :cond_1b

    .line 1090
    move-object v5, v0

    check-cast v5, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->getDate()Ljava/util/Date;

    move-result-object v5

    iput-object v5, v14, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    goto :goto_e

    .line 1091
    :cond_1b
    instance-of v5, v0, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    if-eqz v5, :cond_1c

    .line 1092
    move-object v5, v0

    check-cast v5, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    iget v5, v5, Lcom/sun/mail/imap/protocol/RFC822SIZE;->size:I

    iput v5, v14, Lcom/sun/mail/imap/IMAPMessage;->size:I

    goto :goto_e

    .line 1095
    :cond_1c
    instance-of v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    if-eqz v5, :cond_1d

    .line 1096
    move-object v5, v0

    check-cast v5, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iput-object v5, v14, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    goto :goto_e

    .line 1098
    :cond_1d
    instance-of v5, v0, Lcom/sun/mail/imap/protocol/UID;

    if-eqz v5, :cond_1f

    .line 1099
    move-object v5, v0

    check-cast v5, Lcom/sun/mail/imap/protocol/UID;

    .line 1100
    .local v5, "u":Lcom/sun/mail/imap/protocol/UID;
    move-object/from16 v22, v10

    iget-wide v9, v5, Lcom/sun/mail/imap/protocol/UID;->uid:J

    .end local v10
    .restart local v22
    iput-wide v9, v14, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    .line 1102
    iget-object v9, v1, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v9, :cond_1e

    .line 1103
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    iput-object v9, v1, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1104
    :cond_1e
    iget-object v9, v1, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    new-instance v10, Ljava/lang/Long;

    move-object/from16 v24, v11

    move-object/from16 v23, v12

    iget-wide v11, v5, Lcom/sun/mail/imap/protocol/UID;->uid:J

    .end local v11
    .end local v12
    .restart local v23
    .restart local v24
    invoke-direct {v10, v11, v12}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v9, v10, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 1108
    .end local v5
    .end local v22
    .end local v23
    .end local v24
    .restart local v10
    .restart local v11
    .restart local v12
    :cond_1f
    move-object/from16 v22, v10

    move-object/from16 v24, v11

    move-object/from16 v23, v12

    .end local v10
    .end local v11
    .end local v12
    .restart local v22
    .restart local v23
    .restart local v24
    instance-of v5, v0, Lcom/sun/mail/imap/protocol/RFC822DATA;

    if-nez v5, :cond_20

    .line 1109
    instance-of v5, v0, Lcom/sun/mail/imap/protocol/BODY;

    if-eqz v5, :cond_27

    .line 1111
    :cond_20
    instance-of v5, v0, Lcom/sun/mail/imap/protocol/RFC822DATA;

    if-eqz v5, :cond_21

    .line 1113
    move-object v5, v0

    check-cast v5, Lcom/sun/mail/imap/protocol/RFC822DATA;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v5

    .line 1112
    nop

    .local v5, "headerStream":Ljava/io/InputStream;
    goto :goto_f

    .line 1116
    .end local v5
    :cond_21
    move-object v5, v0

    check-cast v5, Lcom/sun/mail/imap/protocol/BODY;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v5

    .line 1115
    nop

    .line 1119
    .restart local v5
    :goto_f
    new-instance v9, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v9}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    .line 1120
    .local v9, "h":Ljavax/mail/internet/InternetHeaders;
    invoke-virtual {v9, v5}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V

    .line 1121
    iget-object v10, v14, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v10, :cond_25

    if-eqz v4, :cond_22

    .line 1122
    move-object/from16 v25, v0

    goto :goto_11

    .line 1133
    :cond_22
    invoke-virtual {v9}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v10

    .line 1134
    .local v10, "e":Ljava/util/Enumeration;
    :cond_23
    :goto_10
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-nez v11, :cond_24

    .line 1143
    .end local v10
    move-object/from16 v25, v0

    goto :goto_12

    .line 1135
    .restart local v10
    :cond_24
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/mail/Header;

    .line 1136
    .local v11, "he":Ljavax/mail/Header;
    invoke-virtual {v11}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v12}, Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_23

    .line 1137
    iget-object v12, v14, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 1138
    move-object/from16 v25, v0

    invoke-virtual {v11}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .end local v0
    .local v25, "item":Lcom/sun/mail/imap/protocol/Item;
    invoke-virtual {v11}, Ljavax/mail/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1137
    invoke-virtual {v12, v0, v2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    .end local v11
    move-object/from16 v0, v25

    move-object/from16 v2, p2

    goto :goto_10

    .line 1122
    .end local v10
    .end local v25
    .restart local v0
    :cond_25
    move-object/from16 v25, v0

    .end local v0
    .restart local v25
    :goto_11
    iput-object v9, v14, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 1143
    :goto_12
    if-eqz v4, :cond_26

    .line 1144
    const/4 v0, 0x1

    invoke-direct {v14, v0}, Lcom/sun/mail/imap/IMAPMessage;->setHeadersLoaded(Z)V

    goto :goto_14

    .line 1147
    :cond_26
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_13
    array-length v2, v6

    if-lt v0, v2, :cond_28

    .line 1073
    .end local v0
    .end local v5
    .end local v9
    .end local v25
    :cond_27
    :goto_14
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v20

    move/from16 v5, v21

    move-object/from16 v10, v22

    move-object/from16 v12, v23

    move-object/from16 v11, v24

    move-object/from16 v2, p2

    move-object/from16 v9, p1

    goto/16 :goto_b

    .line 1148
    .restart local v0
    .restart local v5
    .restart local v9
    .restart local v25
    :cond_28
    aget-object v2, v6, v0

    invoke-direct {v14, v2}, Lcom/sun/mail/imap/IMAPMessage;->setHeaderLoaded(Ljava/lang/String;)V

    .line 1147
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1031
    .end local v0
    .end local v3
    .end local v9
    .end local v13
    .end local v14
    .end local v15
    .end local v16
    .end local v20
    .end local v21
    .end local v22
    .end local v23
    .end local v24
    .end local v25
    .local v5, "first":Z
    :catchall_2
    move-exception v0

    move/from16 v21, v5

    .end local v5
    .restart local v21
    goto :goto_16

    .line 1046
    .end local v18
    .end local v21
    .local v3, "command":Ljava/lang/StringBuffer;
    .restart local v5
    .local v10, "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .local v11, "r":[Lcom/sun/mail/iap/Response;
    .restart local v12
    :catch_3
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v21, v5

    move-object/from16 v22, v10

    move-object/from16 v23, v12

    .line 1047
    .end local v3
    .end local v5
    .end local v10
    .end local v12
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v18
    .restart local v21
    .restart local v22
    .restart local v23
    :goto_15
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1031
    .end local v0
    .end local v11
    .end local v18
    .end local v21
    .end local v22
    .end local v23
    .restart local v3
    .restart local v5
    :catchall_3
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v21, v5

    .end local v3
    .end local v5
    .restart local v18
    .restart local v21
    :goto_16
    monitor-exit v8

    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_16
.end method

.method private declared-synchronized isHeaderLoaded(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 1372
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1373
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1375
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 1376
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1377
    :cond_1
    const/4 v0, 0x0

    .line 1375
    :goto_0
    monitor-exit p0

    return v0

    .line 1371
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method private declared-synchronized loadBODYSTRUCTURE()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1256
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 1257
    monitor-exit p0

    return-void

    .line 1260
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1262
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1266
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1268
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBodyStructure(I)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 1275
    .end local v1
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    if-eqz v1, :cond_1

    .line 1260
    monitor-exit v0

    .line 1283
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 1279
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1280
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Unable to load BODYSTRUCTURE"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1260
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1271
    :catch_0
    move-exception v1

    .line 1272
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1273
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1269
    .end local v1
    :catch_1
    move-exception v1

    .line 1270
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1260
    .end local v1
    :goto_0
    monitor-exit v0

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 1255
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method private declared-synchronized loadEnvelope()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1174
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 1175
    monitor-exit p0

    return-void

    .line 1177
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    check-cast v0, [Lcom/sun/mail/iap/Response;

    .line 1180
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1182
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 1184
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1186
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    .line 1187
    .local v3, "seqnum":I
    sget-object v4, Lcom/sun/mail/imap/IMAPMessage;->EnvelopeCmd:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    move-object v0, v4

    .line 1189
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-lt v4, v5, :cond_2

    .line 1214
    .end local v4
    invoke-virtual {v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1215
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1180
    .end local v2
    .end local v3
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1

    .line 1225
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_1

    .line 1227
    monitor-exit p0

    return-void

    .line 1226
    :cond_1
    :try_start_5
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Failed to load IMAP envelope"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1192
    .restart local v2
    .restart local v3
    .restart local v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    :try_start_6
    aget-object v5, v0, v4

    if-eqz v5, :cond_8

    .line 1193
    aget-object v5, v0, v4

    instance-of v5, v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v5, :cond_8

    .line 1194
    aget-object v5, v0, v4

    check-cast v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v5

    if-eq v5, v3, :cond_3

    .line 1195
    goto :goto_3

    .line 1197
    :cond_3
    aget-object v5, v0, v4

    check-cast v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1200
    .local v5, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItemCount()I

    move-result v6

    .line 1201
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-lt v7, v6, :cond_4

    .end local v5
    .end local v6
    .end local v7
    goto :goto_3

    .line 1202
    .restart local v5
    .restart local v6
    .restart local v7
    :cond_4
    invoke-virtual {v5, v7}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(I)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v8

    .line 1204
    .local v8, "item":Lcom/sun/mail/imap/protocol/Item;
    instance-of v9, v8, Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-eqz v9, :cond_5

    .line 1205
    move-object v9, v8

    check-cast v9, Lcom/sun/mail/imap/protocol/ENVELOPE;

    iput-object v9, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    goto :goto_2

    .line 1206
    :cond_5
    instance-of v9, v8, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    if-eqz v9, :cond_6

    .line 1207
    move-object v9, v8

    check-cast v9, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    invoke-virtual {v9}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->getDate()Ljava/util/Date;

    move-result-object v9

    iput-object v9, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    goto :goto_2

    .line 1208
    :cond_6
    instance-of v9, v8, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    if-eqz v9, :cond_7

    .line 1209
    move-object v9, v8

    check-cast v9, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    iget v9, v9, Lcom/sun/mail/imap/protocol/RFC822SIZE;->size:I

    iput v9, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    .line 1201
    .end local v8
    :try_end_6
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1189
    .end local v5
    .end local v6
    .end local v7
    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1180
    .end local v2
    .end local v3
    .end local v4
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 1218
    :catch_0
    move-exception v2

    .line 1219
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1220
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 1216
    .end local v2
    :catch_1
    move-exception v2

    .line 1217
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v3, Ljavax/mail/FolderClosedException;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v3

    .line 1180
    .end local v2
    :goto_4
    monitor-exit v1

    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2

    .line 1173
    .end local v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method private declared-synchronized loadFlags()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1332
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 1333
    monitor-exit p0

    return-void

    .line 1336
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1338
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1342
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1344
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchFlags(I)Ljavax/mail/Flags;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    .line 1336
    .end local v1
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    .line 1352
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 1336
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1347
    :catch_0
    move-exception v1

    .line 1348
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1349
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1345
    .end local v1
    :catch_1
    move-exception v1

    .line 1346
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1336
    .end local v1
    :goto_0
    monitor-exit v0

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 1331
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method private declared-synchronized loadHeaders()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1289
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 1290
    monitor-exit p0

    return-void

    .line 1292
    :cond_0
    const/4 v0, 0x0

    .line 1295
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1297
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 1301
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1303
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1304
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    .line 1305
    const-string v4, "HEADER"

    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1304
    invoke-virtual {v2, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v3

    .line 1306
    .local v3, "b":Lcom/sun/mail/imap/protocol/BODY;
    if-eqz v3, :cond_2

    .line 1307
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1309
    .end local v3
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    .line 1310
    const-string v4, "HEADER"

    .line 1309
    invoke-virtual {v2, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v3

    .line 1311
    .local v3, "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    if-eqz v3, :cond_2

    .line 1312
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v4

    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v4

    .line 1295
    .end local v2
    .end local v3
    :cond_2
    :goto_0
    :try_start_3
    monitor-exit v1

    .line 1322
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 1324
    :try_start_4
    new-instance v1, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v1, v0}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 1325
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    .line 1326
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    .line 1323
    :cond_3
    :try_start_5
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Cannot load header"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1295
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1316
    :catch_0
    move-exception v2

    .line 1317
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1318
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 1314
    .end local v2
    :catch_1
    move-exception v2

    .line 1315
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v3, Ljavax/mail/FolderClosedException;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v3

    .line 1295
    .end local v2
    :goto_1
    monitor-exit v1

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2

    .line 1288
    .end local v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method private declared-synchronized setHeaderLoaded(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 1384
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 1385
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1383
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method private declared-synchronized setHeadersLoaded(Z)V
    .locals 0
    .param p1, "loaded"    # Z

    monitor-enter p0

    .line 1365
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    .line 1366
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1364
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method private toSection(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 1394
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1395
    return-object p1

    .line 1397
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method _getSession()Ljavax/mail/Session;
    .locals 1

    .line 1439
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method _setFlags(Ljavax/mail/Flags;)V
    .locals 0
    .param p1, "flags"    # Ljavax/mail/Flags;

    .line 1432
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    .line 1433
    return-void
.end method

.method public addFrom([Ljavax/mail/Address;)V
    .locals 2
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 261
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 774
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 812
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .locals 2
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 306
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkExpunged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessageRemovedException;
        }
    .end annotation

    .line 219
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->expunged:Z

    if-nez v0, :cond_0

    .line 221
    return-void

    .line 220
    :cond_0
    new-instance v0, Ljavax/mail/MessageRemovedException;

    invoke-direct {v0}, Ljavax/mail/MessageRemovedException;-><init>()V

    throw v0
.end method

.method protected forceCheckExpunged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessageRemovedException;,
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V

    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 234
    :catch_0
    move-exception v1

    .line 229
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 238
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->expunged:Z

    if-nez v0, :cond_0

    .line 240
    return-void

    .line 239
    :cond_0
    new-instance v0, Ljavax/mail/MessageRemovedException;

    invoke-direct {v0}, Ljavax/mail/MessageRemovedException;-><init>()V

    throw v0

    .line 232
    :catch_1
    move-exception v1

    .line 233
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_2
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 229
    .end local v1
    :goto_1
    monitor-exit v0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 819
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 820
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 821
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 786
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 787
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 788
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 477
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 478
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 479
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 409
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 410
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 413
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 490
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 491
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 492
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getPeek()Z

    move-result v1

    .line 569
    .local v1, "pk":Z
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 575
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 577
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 578
    new-instance v4, Lcom/sun/mail/imap/IMAPInputStream;

    const-string v6, "TEXT"

    invoke-direct {p0, v6}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 579
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    if-eqz v7, :cond_0

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v5, v5, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    nop

    .line 578
    :cond_0
    invoke-direct {v4, p0, v6, v5, v1}, Lcom/sun/mail/imap/IMAPInputStream;-><init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V

    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v2

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    .line 581
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 583
    if-eqz v1, :cond_2

    .line 584
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    const-string v5, "TEXT"

    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v4

    .local v4, "b":Lcom/sun/mail/imap/protocol/BODY;
    goto :goto_0

    .line 586
    .end local v4
    :cond_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    const-string v5, "TEXT"

    invoke-direct {p0, v5}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v4

    .line 587
    .restart local v4
    :goto_0
    if-eqz v4, :cond_4

    .line 588
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v5

    move-object v0, v5

    goto :goto_1

    .line 590
    .end local v4
    :cond_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    const-string v5, "TEXT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v4

    .line 591
    .local v4, "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    if-eqz v4, :cond_4

    .line 592
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v5

    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v5

    .line 569
    .end local v3
    .end local v4
    :cond_4
    :goto_1
    :try_start_3
    monitor-exit v2

    .line 602
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    .line 605
    return-object v0

    .line 603
    :cond_5
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "No content"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 569
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 596
    :catch_0
    move-exception v3

    .line 597
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 598
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 594
    .end local v3
    :catch_1
    move-exception v3

    .line 595
    .local v3, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v4, Ljavax/mail/FolderClosedException;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v4

    .line 569
    .end local v3
    :goto_2
    monitor-exit v2

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 442
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 443
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 445
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 446
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    .line 448
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDataHandler()Ljavax/activation/DataHandler;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 613
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 615
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_3

    .line 616
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 617
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 620
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    .line 619
    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 621
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    .line 627
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isMulti()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    new-instance v0, Ljavax/activation/DataHandler;

    .line 629
    new-instance v1, Lcom/sun/mail/imap/IMAPMultipartDataSource;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 630
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    .line 629
    invoke-direct {v1, p0, v2, v3, p0}, Lcom/sun/mail/imap/IMAPMultipartDataSource;-><init>(Ljavax/mail/internet/MimePart;[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    .line 628
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->dh:Ljavax/activation/DataHandler;

    goto :goto_1

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isNested()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->isREV1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 637
    new-instance v0, Ljavax/activation/DataHandler;

    .line 638
    new-instance v1, Lcom/sun/mail/imap/IMAPNestedMessage;

    .line 639
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 640
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    .line 641
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, "1"

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 638
    :goto_0
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sun/mail/imap/IMAPNestedMessage;-><init>(Lcom/sun/mail/imap/IMAPMessage;Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Lcom/sun/mail/imap/protocol/ENVELOPE;Ljava/lang/String;)V

    .line 642
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->dh:Ljavax/activation/DataHandler;

    .line 646
    :cond_3
    :goto_1
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 503
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 505
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    return-object v0

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 509
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 510
    const/4 v0, 0x0

    return-object v0

    .line 513
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    .line 518
    .end local v0
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 456
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 457
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 469
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 470
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method protected getFetchBlockSize()I
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getFetchBlockSize()I

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, "filename":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 546
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    const-string v2, "filename"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    if-eqz v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    :cond_1
    return-object v0
.end method

.method public declared-synchronized getFlags()Ljavax/mail/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 848
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 849
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadFlags()V

    .line 850
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getFlags()Ljavax/mail/Flags;

    move-result-object v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 847
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public getFrom()[Ljavax/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 252
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 253
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->from:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 759
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 762
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 763
    const/4 v0, 0x0

    return-object v0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 704
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 706
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 710
    :cond_0
    const/4 v0, 0x0

    .line 713
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 715
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 719
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 721
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 722
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    .line 723
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HEADER.FIELDS ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 722
    invoke-virtual {v2, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v3

    .line 725
    .local v3, "b":Lcom/sun/mail/imap/protocol/BODY;
    if-eqz v3, :cond_2

    .line 726
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 728
    .end local v3
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HEADER.LINES ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 728
    invoke-virtual {v2, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v3

    .line 730
    .local v3, "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    if-eqz v3, :cond_2

    .line 731
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v4

    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 713
    .end local v2
    .end local v3
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 743
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    .line 744
    const/4 v1, 0x0

    return-object v1

    .line 746
    :cond_3
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v1, :cond_4

    .line 747
    new-instance v1, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v1}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 748
    :cond_4
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v1, v0}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V

    .line 749
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->setHeaderLoaded(Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v1, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 713
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 735
    :catch_0
    move-exception v2

    .line 736
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 737
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 733
    .end local v2
    :catch_1
    move-exception v2

    .line 734
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v3, Ljavax/mail/FolderClosedException;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v3

    .line 713
    .end local v2
    :goto_1
    monitor-exit v1

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getInReplyTo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 427
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 428
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 429
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->inReplyTo:Ljava/lang/String;

    return-object v0
.end method

.method public getLineCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 400
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 401
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    return v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 829
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 830
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 831
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 796
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 797
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 798
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected getMessageCacheLock()Ljava/lang/Object;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 530
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 531
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 532
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 839
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 840
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 841
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 806
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 807
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 808
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPeek()Z
    .locals 1

    monitor-enter p0

    .line 899
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->peek:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method protected getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 147
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 148
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    if-eqz v0, :cond_0

    .line 151
    return-object v0

    .line 149
    :cond_0
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-direct {v1, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v1
.end method

.method public getReceivedDate()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 371
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 372
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x0

    return-object v0

    .line 375
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    .locals 1
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 287
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 289
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->to:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0

    .line 291
    :cond_0
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->cc:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0

    .line 293
    :cond_1
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->bcc:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0

    .line 296
    :cond_2
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    return-object v0
.end method

.method public getReplyTo()[Ljavax/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 314
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 315
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->replyTo:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Ljavax/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 269
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 270
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 273
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 355
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 356
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 357
    const/4 v0, 0x0

    return-object v0

    .line 359
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method protected getSequenceNumber()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    return v0
.end method

.method public getSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 385
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 386
    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 388
    :cond_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 326
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 328
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    return-object v0

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 332
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 333
    const/4 v0, 0x0

    return-object v0

    .line 337
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    .line 342
    .end local v0
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    return-object v0
.end method

.method protected getUID()J
    .locals 2

    .line 204
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    return-wide v0
.end method

.method public declared-synchronized invalidateHeaders()V
    .locals 2

    monitor-enter p0

    .line 910
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    .line 912
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    .line 913
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 914
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    .line 915
    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    .line 916
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    .line 917
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    .line 918
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    .line 919
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 909
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method protected isREV1()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 161
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v1

    return v1

    .line 162
    :cond_0
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-direct {v1, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v1
.end method

.method public declared-synchronized isSet(Ljavax/mail/Flags$Flag;)Z
    .locals 1
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 858
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 859
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadFlags()V

    .line 860
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 857
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 779
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentID(Ljava/lang/String;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 483
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentLanguage([Ljava/lang/String;)V
    .locals 2
    .param p1, "languages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 418
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 2
    .param p1, "md5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 496
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .locals 2
    .param p1, "content"    # Ljavax/activation/DataHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 651
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 523
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisposition(Ljava/lang/String;)V
    .locals 2
    .param p1, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 461
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setExpunged(Z)V
    .locals 1
    .param p1, "set"    # Z

    .line 213
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->setExpunged(Z)V

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    .line 215
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 554
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setFlags(Ljavax/mail/Flags;Z)V
    .locals 5
    .param p1, "flag"    # Ljavax/mail/Flags;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 869
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 871
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 872
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 873
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(ILjavax/mail/Flags;Z)V

    .line 869
    .end local v1
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    .line 880
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 869
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 876
    :catch_0
    move-exception v1

    .line 877
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 874
    .end local v1
    :catch_1
    move-exception v1

    .line 875
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 869
    .end local v1
    :goto_0
    monitor-exit v0

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 868
    .end local p1
    .end local p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public setFrom(Ljavax/mail/Address;)V
    .locals 2
    .param p1, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 257
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 769
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setMessageNumber(I)V
    .locals 0
    .param p1, "msgnum"    # I

    .line 200
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->setMessageNumber(I)V

    .line 201
    return-void
.end method

.method public declared-synchronized setPeek(Z)V
    .locals 0
    .param p1, "peek"    # Z

    monitor-enter p0

    .line 889
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPMessage;->peek:Z

    .line 890
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 888
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .locals 2
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 301
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReplyTo([Ljavax/mail/Address;)V
    .locals 2
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 319
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSender(Ljavax/mail/Address;)V
    .locals 2
    .param p1, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 278
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSentDate(Ljava/util/Date;)V
    .locals 2
    .param p1, "d"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 363
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setSequenceNumber(I)V
    .locals 0
    .param p1, "seqnum"    # I

    .line 192
    iput p1, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    .line 193
    return-void
.end method

.method public setSubject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 347
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setUID(J)V
    .locals 0
    .param p1, "uid"    # J

    .line 208
    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    .line 209
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getPeek()Z

    move-result v1

    .line 663
    .local v1, "pk":Z
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 665
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 667
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 669
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 671
    if-eqz v1, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v4

    .local v4, "b":Lcom/sun/mail/imap/protocol/BODY;
    goto :goto_0

    .line 674
    .end local v4
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v4

    .line 675
    .restart local v4
    :goto_0
    if-eqz v4, :cond_2

    .line 676
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v5

    move-object v0, v5

    goto :goto_1

    .line 678
    .end local v4
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v4

    .line 679
    .local v4, "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    if-eqz v4, :cond_2

    .line 680
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v5

    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 663
    .end local v3
    .end local v4
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v2

    .line 690
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 694
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 696
    .local v2, "bytes":[B
    :goto_2
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "count":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 698
    return-void

    .line 696
    :cond_3
    nop

    .line 697
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .end local v4
    goto :goto_2

    .line 691
    .end local v2
    :cond_4
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "No content"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 663
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 684
    :catch_0
    move-exception v3

    .line 685
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 686
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 682
    .end local v3
    :catch_1
    move-exception v3

    .line 683
    .local v3, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v4, Ljavax/mail/FolderClosedException;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v3}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v4

    .line 663
    .end local v3
    :goto_3
    monitor-exit v2

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
