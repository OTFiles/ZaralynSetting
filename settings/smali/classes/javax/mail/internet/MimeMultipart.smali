.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;
.source "MimeMultipart.java"


# static fields
.field private static bmparse:Z

.field private static ignoreMissingBoundaryParameter:Z

.field private static ignoreMissingEndBoundary:Z


# instance fields
.field private complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field protected parsed:Z

.field private preamble:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 102
    const/4 v0, 0x1

    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 103
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 104
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    .line 109
    :try_start_0
    const-string v1, "mail.mime.multipart.ignoremissingendboundary"

    .line 108
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    move v3, v2

    goto :goto_0

    .line 112
    :cond_0
    nop

    .line 111
    move v3, v0

    :goto_0
    sput-boolean v3, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 114
    const-string v3, "mail.mime.multipart.ignoremissingboundaryparameter"

    .line 113
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 117
    if-eqz v1, :cond_1

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    move v3, v2

    goto :goto_1

    .line 117
    :cond_1
    nop

    .line 116
    move v3, v0

    :goto_1
    sput-boolean v3, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 119
    const-string v3, "mail.mime.multipart.bmparse"

    .line 118
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 121
    if-eqz v1, :cond_2

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    nop

    :cond_2
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 122
    .end local v1
    :catch_0
    move-exception v0

    .line 100
    :goto_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 161
    const-string v0, "mixed"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "subtype"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 143
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 149
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 177
    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "boundary":Ljava/lang/String;
    new-instance v2, Ljavax/mail/internet/ContentType;

    const-string v3, "multipart"

    invoke-direct {v2, v3, p1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    move-object v0, v2

    .line 179
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    const-string v2, "boundary"

    invoke-virtual {v0, v2, v1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 2
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 143
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 149
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 204
    instance-of v0, p1, Ljavax/mail/MessageAware;

    if-eqz v0, :cond_0

    .line 205
    move-object v0, p1

    check-cast v0, Ljavax/mail/MessageAware;

    invoke-interface {v0}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v0

    .line 206
    .local v0, "mc":Ljavax/mail/MessageContext;
    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    .line 209
    .end local v0
    :cond_0
    instance-of v0, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v0, :cond_1

    .line 211
    move-object v0, p1

    check-cast v0, Ljavax/mail/MultipartDataSource;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    .line 212
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 218
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 219
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    .line 220
    return-void
.end method

.method private declared-synchronized parsebm()V
    .locals 47
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 718
    :try_start_0
    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    if-eqz v0, :cond_0

    .line 719
    monitor-exit p0

    return-void

    .line 721
    :cond_0
    const/4 v2, 0x0

    .line 722
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 723
    .local v3, "sin":Ljavax/mail/internet/SharedInputStream;
    const-wide/16 v4, 0x0

    .local v4, "start":J
    const-wide/16 v6, 0x0

    .line 726
    .local v6, "end":J
    :try_start_1
    iget-object v0, v1, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    .line 727
    instance-of v0, v2, Ljava/io/ByteArrayInputStream;

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    if-nez v0, :cond_1

    .line 728
    :try_start_2
    instance-of v0, v2, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_1

    .line 729
    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-nez v0, :cond_1

    .line 730
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_12

    move-object v2, v0

    goto :goto_0

    .line 731
    :catch_0
    move-exception v0

    move-wide/from16 v17, v4

    move-wide/from16 v20, v6

    goto/16 :goto_35

    .line 734
    :cond_1
    :goto_0
    :try_start_3
    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_2

    .line 735
    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v3, v0

    .line 737
    :cond_2
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v8, v1, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 738
    .local v8, "cType":Ljavax/mail/internet/ContentType;
    const/4 v0, 0x0

    .line 739
    .local v0, "boundary":Ljava/lang/String;
    const-string v9, "boundary"

    invoke-virtual {v8, v9}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 740
    .local v9, "bp":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 741
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "--"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto :goto_1

    .line 742
    :cond_3
    sget-boolean v10, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_12

    if-eqz v10, :cond_36

    .line 747
    move-object v10, v0

    .end local v0
    .local v10, "boundary":Ljava/lang/String;
    :goto_1
    :try_start_4
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v0

    .line 748
    .local v11, "lin":Lcom/sun/mail/util/LineInputStream;
    const/4 v0, 0x0

    .line 750
    .local v0, "preamblesb":Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .line 751
    .local v12, "lineSeparator":Ljava/lang/String;
    move-object v13, v12

    move-object v12, v0

    .end local v0
    .local v12, "preamblesb":Ljava/lang/StringBuffer;
    .local v13, "lineSeparator":Ljava/lang/String;
    :goto_2
    invoke-virtual {v11}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .local v14, "line":Ljava/lang/String;
    const/4 v15, 0x1

    if-nez v0, :cond_4

    .line 798
    move-wide/from16 v17, v4

    goto :goto_5

    .line 751
    :cond_4
    nop

    .line 759
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v15

    .local v0, "i":I
    move v15, v0

    .end local v0
    .local v15, "i":I
    :goto_3
    if-gez v15, :cond_5

    .line 764
    move-wide/from16 v17, v4

    goto :goto_4

    .line 760
    :cond_5
    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 761
    .local v0, "c":C
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_10

    move-wide/from16 v17, v4

    const/16 v4, 0x20

    if-eq v0, v4, :cond_35

    .end local v4
    .local v17, "start":J
    const/16 v4, 0x9

    if-eq v0, v4, :cond_34

    .line 762
    nop

    .line 764
    .end local v0
    :goto_4
    add-int/lit8 v0, v15, 0x1

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_12
    .catchall {:try_start_5 .. :try_end_5} :catchall_f

    move-object v14, v0

    .line 765
    if-eqz v10, :cond_7

    .line 766
    :try_start_6
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_6

    .line 767
    goto :goto_5

    .line 781
    :cond_6
    move-wide/from16 v20, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v31, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    goto/16 :goto_2a

    .line 774
    :cond_7
    :try_start_7
    const-string v0, "--"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_12
    .catchall {:try_start_7 .. :try_end_7} :catchall_f

    if-eqz v0, :cond_30

    .line 775
    move-object v10, v14

    .line 776
    nop

    .line 798
    .end local v15
    :goto_5
    if-eqz v14, :cond_2f

    .line 801
    if-eqz v12, :cond_8

    .line 802
    :try_start_8
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    .line 1025
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    :catchall_0
    move-exception v0

    move-object v4, v0

    move-wide/from16 v20, v6

    .end local v6
    .end local v8
    .end local v9
    .end local v10
    .local v20, "end":J
    .local v26, "cType":Ljavax/mail/internet/ContentType;
    .local v27, "bp":Ljava/lang/String;
    .local v29, "boundary":Ljava/lang/String;
    :goto_6
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    :goto_7
    move-object/from16 v29, v10

    goto/16 :goto_33

    .line 1023
    .end local v20
    .end local v26
    .end local v27
    .end local v29
    .restart local v6
    .restart local v8
    .restart local v9
    .restart local v10
    :catch_1
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-wide/from16 v4, v17

    goto/16 :goto_31

    .line 805
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    :cond_8
    :goto_8
    :try_start_9
    invoke-static {v10}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 806
    .local v0, "bndbytes":[B
    array-length v4, v0

    .line 813
    .local v4, "bl":I
    const/16 v5, 0x100

    new-array v5, v5, [I

    .line 814
    .local v5, "bcs":[I
    const/4 v15, 0x0

    .restart local v15
    :goto_9
    if-lt v15, v4, :cond_2e

    .line 818
    .end local v15
    new-array v15, v4, [I

    .line 820
    .local v15, "gss":[I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    move/from16 v19, v4

    .local v19, "i":I
    move-wide/from16 v20, v6

    move/from16 v6, v19

    .end local v19
    .local v6, "i":I
    .restart local v20
    :goto_a
    if-gtz v6, :cond_2a

    .line 836
    .end local v6
    add-int/lit8 v6, v4, -0x1

    const/4 v7, 0x1

    :try_start_a
    aput v7, v15, v6

    .line 842
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    const/4 v6, 0x0

    .line 844
    .local v6, "done":Z
    :goto_b
    if-eqz v6, :cond_9

    goto :goto_c

    .line 845
    :cond_9
    const/4 v7, 0x0

    .line 846
    .local v7, "headers":Ljavax/mail/internet/InternetHeaders;
    if-eqz v3, :cond_e

    .line 847
    :try_start_b
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v22

    move-wide/from16 v17, v22

    .line 849
    :cond_a
    invoke-virtual {v11}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, v19

    if-eqz v19, :cond_b

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    if-gtz v19, :cond_a

    .line 851
    :cond_b
    if-nez v14, :cond_d

    .line 852
    sget-boolean v16, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v16, :cond_c

    .line 856
    move/from16 v24, v6

    const/4 v6, 0x0

    iput-boolean v6, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 857
    .end local v6
    .local v24, "done":Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    nop

    .line 1027
    .end local v0
    .end local v4
    .end local v5
    .end local v7
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v24
    :goto_c
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_12

    goto :goto_d

    .line 1028
    :catch_2
    move-exception v0

    .line 1033
    :goto_d
    const/4 v4, 0x1

    :try_start_d
    iput-boolean v4, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 1034
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_12

    monitor-exit p0

    return-void

    .line 853
    .restart local v0
    .restart local v4
    .restart local v5
    .restart local v6
    .restart local v7
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    :cond_c
    move/from16 v24, v6

    .end local v6
    .restart local v24
    :try_start_e
    new-instance v6, Ljavax/mail/MessagingException;

    .line 854
    move-object/from16 v25, v7

    const-string v7, "missing multipart end boundary"

    .line 853
    .end local v7
    .local v25, "headers":Ljavax/mail/internet/InternetHeaders;
    invoke-direct {v6, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 864
    .end local v24
    .end local v25
    .restart local v6
    .restart local v7
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_d
    move/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-wide/from16 v8, v17

    .end local v6
    .end local v7
    .restart local v24
    .restart local v25
    goto :goto_e

    .line 1025
    .end local v0
    .end local v4
    .end local v5
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v24
    .end local v25
    :catchall_1
    move-exception v0

    move-object v4, v0

    goto :goto_6

    .line 1023
    :catch_3
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    goto/16 :goto_2e

    .line 861
    .restart local v0
    .restart local v4
    .restart local v5
    .restart local v6
    .restart local v7
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    :cond_e
    move/from16 v24, v6

    move-object/from16 v25, v7

    .end local v6
    .end local v7
    .restart local v24
    .restart local v25
    :try_start_f
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v6

    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    move-object v7, v6

    .line 864
    .end local v25
    .restart local v7
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-wide/from16 v8, v17

    .end local v9
    .end local v17
    .local v8, "start":J
    .restart local v26
    .restart local v27
    :goto_e
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v6

    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    if-eqz v6, :cond_29

    .line 867
    const/4 v6, 0x0

    .line 869
    .local v6, "buf":Ljava/io/ByteArrayOutputStream;
    if-nez v3, :cond_f

    .line 870
    move-object/from16 v28, v6

    :try_start_11
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .end local v6
    .local v28, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 884
    .end local v28
    .restart local v6
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-wide/from16 v17, v20

    goto :goto_f

    .line 1025
    .end local v0
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v24
    :catchall_2
    move-exception v0

    move-object v4, v0

    move-wide/from16 v17, v8

    goto/16 :goto_7

    .line 1023
    :catch_4
    move-exception v0

    move-wide v4, v8

    goto/16 :goto_2f

    .line 872
    .restart local v0
    .restart local v4
    .restart local v5
    .restart local v6
    .restart local v7
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    .restart local v24
    :cond_f
    move-object/from16 v28, v6

    .end local v6
    .restart local v28
    :try_start_12
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v17

    .line 884
    .end local v20
    .local v17, "end":J
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    move-object/from16 v6, v28

    .end local v28
    .restart local v6
    :goto_f
    move-object/from16 v29, v10

    :try_start_13
    new-array v10, v4, [B

    .line 885
    .local v10, "inbuf":[B
    .restart local v29
    move-object/from16 v30, v10

    new-array v10, v4, [B

    .line 886
    .local v10, "previnbuf":[B
    .local v30, "inbuf":[B
    const/16 v19, 0x0

    .line 887
    .local v19, "inSize":I
    const/16 v20, 0x0

    .line 889
    .local v20, "prevSize":I
    move-object/from16 v31, v11

    move-object/from16 v33, v12

    move-object/from16 v32, v14

    move/from16 v12, v20

    move-object/from16 v11, v30

    move-object v14, v10

    const/4 v10, 0x1

    .line 895
    .end local v20
    .end local v30
    .local v10, "first":Z
    .local v11, "inbuf":[B
    .local v12, "prevSize":I
    .local v14, "previnbuf":[B
    .local v31, "lin":Lcom/sun/mail/util/LineInputStream;
    .local v32, "line":Ljava/lang/String;
    .local v33, "preamblesb":Ljava/lang/StringBuffer;
    :goto_10
    move-object/from16 v34, v13

    add-int/lit8 v13, v4, 0x4

    .end local v13
    .local v34, "lineSeparator":Ljava/lang/String;
    add-int/lit16 v13, v13, 0x3e8

    invoke-virtual {v2, v13}, Ljava/io/InputStream;->mark(I)V

    .line 896
    const/4 v13, 0x0

    .line 897
    .local v13, "eolLen":I
    move/from16 v35, v13

    const/4 v13, 0x0

    invoke-static {v2, v11, v13, v4}, Ljavax/mail/internet/MimeMultipart;->readFully(Ljava/io/InputStream;[BII)I

    move-result v20

    .end local v13
    .local v35, "eolLen":I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    move/from16 v13, v20

    .line 898
    .end local v19
    .local v13, "inSize":I
    if-ge v13, v4, :cond_12

    .line 900
    :try_start_14
    sget-boolean v19, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v19, :cond_11

    .line 903
    if-eqz v3, :cond_10

    .line 904
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v19

    move-wide/from16 v17, v19

    .line 905
    :cond_10
    move-object/from16 v36, v15

    const/4 v15, 0x0

    iput-boolean v15, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 906
    .end local v15
    .local v36, "gss":[I
    const/4 v15, 0x1

    .line 907
    .end local v24
    .local v15, "done":Z
    nop

    .line 894
    move-object/from16 v37, v5

    move-object/from16 v38, v7

    move/from16 v42, v10

    move-object/from16 v41, v11

    move-wide/from16 v10, v17

    move/from16 v7, v35

    goto/16 :goto_19

    .line 901
    .end local v36
    .local v15, "gss":[I
    .restart local v24
    :cond_11
    move-object/from16 v36, v15

    .end local v15
    .restart local v36
    new-instance v15, Ljavax/mail/MessagingException;

    .line 902
    move-object/from16 v37, v5

    const-string v5, "missing multipart end boundary"

    .line 901
    .end local v5
    .local v37, "bcs":[I
    invoke-direct {v15, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1025
    .end local v0
    .end local v4
    .end local v6
    .end local v7
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v24
    .end local v31
    .end local v32
    .end local v33
    .end local v34
    .end local v35
    .end local v36
    .end local v37
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    move-wide/from16 v20, v17

    move-wide/from16 v17, v8

    goto/16 :goto_33

    .line 1023
    :catch_5
    move-exception v0

    move-wide v4, v8

    move-wide/from16 v6, v17

    goto/16 :goto_29

    .line 911
    .restart local v0
    .restart local v4
    .restart local v5
    .restart local v6
    .restart local v7
    .restart local v10
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    .restart local v24
    .restart local v31
    .restart local v32
    .restart local v33
    .restart local v34
    .restart local v35
    :cond_12
    move-object/from16 v37, v5

    move-object/from16 v36, v15

    .end local v5
    .end local v15
    .restart local v36
    .restart local v37
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_11
    if-gez v5, :cond_13

    .line 915
    move-object/from16 v38, v7

    goto :goto_12

    .line 912
    :cond_13
    :try_start_15
    aget-byte v15, v11, v5

    move-object/from16 v38, v7

    aget-byte v7, v0, v5

    .end local v7
    .local v38, "headers":Ljavax/mail/internet/InternetHeaders;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    if-eq v15, v7, :cond_28

    .line 913
    nop

    .line 915
    :goto_12
    if-gez v5, :cond_23

    .line 916
    const/4 v7, 0x0

    .line 917
    .end local v35
    .local v7, "eolLen":I
    if-nez v10, :cond_16

    .line 920
    add-int/lit8 v19, v12, -0x1

    :try_start_16
    aget-byte v19, v14, v19

    move/from16 v39, v19

    .line 921
    .local v39, "b":I
    move/from16 v40, v7

    move/from16 v15, v39

    const/16 v7, 0xd

    if-eq v15, v7, :cond_14

    .end local v7
    .end local v39
    .local v15, "b":I
    .local v40, "eolLen":I
    const/16 v7, 0xa

    if-ne v15, v7, :cond_17

    goto :goto_13

    .line 922
    :cond_14
    const/16 v7, 0xa

    :goto_13
    const/16 v19, 0x1

    .line 923
    .end local v40
    .local v19, "eolLen":I
    if-ne v15, v7, :cond_15

    const/4 v7, 0x2

    if-lt v12, v7, :cond_15

    .line 924
    add-int/lit8 v7, v12, -0x2

    aget-byte v7, v14, v7

    .line 925
    .end local v15
    .local v7, "b":I
    const/16 v15, 0xd

    if-ne v7, v15, :cond_15

    .line 926
    const/4 v7, 0x2

    .end local v19
    .local v7, "eolLen":I
    goto :goto_14

    .line 930
    .end local v7
    .restart local v19
    :cond_15
    move/from16 v7, v19

    goto :goto_14

    .end local v19
    .restart local v7
    :cond_16
    move/from16 v40, v7

    .end local v7
    .restart local v40
    :cond_17
    move/from16 v7, v40

    .end local v40
    .restart local v7
    :goto_14
    if-nez v10, :cond_19

    if-lez v7, :cond_18

    goto :goto_15

    .line 958
    :cond_18
    move-wide/from16 v44, v8

    move/from16 v42, v10

    move-object/from16 v30, v11

    move-object/from16 v8, v38

    goto/16 :goto_1d

    .line 931
    :cond_19
    :goto_15
    if-eqz v3, :cond_1a

    .line 934
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v19

    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    move/from16 v42, v10

    move-object/from16 v41, v11

    int-to-long v10, v4

    .end local v10
    .end local v11
    .local v41, "inbuf":[B
    .local v42, "first":Z
    sub-long v19, v19, v10

    int-to-long v10, v7

    sub-long v19, v19, v10

    .line 937
    .end local v17
    .local v19, "end":J
    move-wide/from16 v17, v19

    goto :goto_16

    .end local v19
    .end local v41
    .end local v42
    .restart local v10
    .restart local v11
    .restart local v17
    :cond_1a
    move/from16 v42, v10

    move-object/from16 v41, v11

    .end local v10
    .end local v11
    .restart local v41
    .restart local v42
    :goto_16
    :try_start_17
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 938
    .local v10, "b2":I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_1b

    .line 939
    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v15

    if-ne v15, v11, :cond_1b

    .line 940
    const/4 v11, 0x1

    iput-boolean v11, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 941
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    const/4 v11, 0x1

    .line 942
    .end local v24
    .local v11, "done":Z
    nop

    .line 894
    move v15, v11

    move-wide/from16 v10, v17

    goto :goto_19

    .line 946
    .end local v11
    .restart local v24
    :cond_1b
    :goto_17
    const/16 v11, 0x20

    if-eq v10, v11, :cond_22

    const/16 v15, 0x9

    if-eq v10, v15, :cond_22

    .line 949
    const/16 v11, 0xa

    if-ne v10, v11, :cond_1c

    .line 950
    goto :goto_18

    .line 951
    :cond_1c
    const/16 v11, 0xd

    if-ne v10, v11, :cond_21

    .line 952
    const/4 v11, 0x1

    :try_start_19
    invoke-virtual {v2, v11}, Ljava/io/InputStream;->mark(I)V

    .line 953
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v11

    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    const/16 v15, 0xa

    if-eq v11, v15, :cond_1d

    .line 954
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 955
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    nop

    .line 894
    .end local v5
    .end local v10
    :cond_1d
    :goto_18
    move-wide/from16 v10, v17

    move/from16 v15, v24

    .end local v17
    .end local v24
    .local v10, "end":J
    .local v15, "done":Z
    :goto_19
    move v5, v7

    .line 1009
    .end local v7
    .local v5, "eolLen":I
    if-eqz v3, :cond_1e

    .line 1010
    :try_start_1b
    invoke-interface {v3, v8, v9, v10, v11}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v7

    .line 1019
    .local v7, "part":Ljavax/mail/internet/MimeBodyPart;
    move/from16 v43, v5

    move-wide/from16 v44, v8

    move-object/from16 v8, v38

    move-object/from16 v5, v41

    goto :goto_1c

    .line 1025
    .end local v0
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v31
    .end local v32
    .end local v33
    .end local v34
    .end local v36
    .end local v37
    .end local v38
    .end local v41
    .end local v42
    :catchall_4
    move-exception v0

    move-object v4, v0

    move-wide/from16 v17, v8

    move-wide/from16 v20, v10

    goto/16 :goto_33

    .line 1023
    :catch_6
    move-exception v0

    move-wide v4, v8

    move-wide v6, v10

    goto/16 :goto_29

    .line 1013
    .restart local v0
    .restart local v4
    .restart local v5
    .restart local v6
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    .restart local v31
    .restart local v32
    .restart local v33
    .restart local v34
    .restart local v36
    .restart local v37
    .restart local v38
    .restart local v41
    .restart local v42
    :cond_1e
    sub-int v7, v12, v5

    if-lez v7, :cond_1f

    .line 1014
    sub-int v7, v12, v5

    move/from16 v43, v5

    const/4 v5, 0x0

    invoke-virtual {v6, v14, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .end local v5
    .local v43, "eolLen":I
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    goto :goto_1a

    .line 1017
    .end local v43
    .restart local v5
    :cond_1f
    move/from16 v43, v5

    .end local v5
    .restart local v43
    :goto_1a
    :try_start_1c
    iget-boolean v5, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    if-nez v5, :cond_20

    if-lez v13, :cond_20

    .line 1018
    move-object/from16 v5, v41

    const/4 v7, 0x0

    :try_start_1d
    invoke-virtual {v6, v5, v7, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .end local v41
    .local v5, "inbuf":[B
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_6
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    goto :goto_1b

    .line 1019
    .end local v5
    .restart local v41
    :cond_20
    move-object/from16 v5, v41

    .end local v41
    .restart local v5
    :goto_1b
    :try_start_1e
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    move-wide/from16 v44, v8

    move-object/from16 v8, v38

    :try_start_1f
    invoke-virtual {v1, v8, v7}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v7

    .line 1021
    .end local v38
    .restart local v7
    .local v8, "headers":Ljavax/mail/internet/InternetHeaders;
    .local v44, "start":J
    :goto_1c
    invoke-super {v1, v7}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 844
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v12
    .end local v13
    .end local v14
    .end local v42
    .end local v43
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_7
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    move-wide/from16 v20, v10

    move v6, v15

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move-object/from16 v10, v29

    move-object/from16 v11, v31

    move-object/from16 v14, v32

    move-object/from16 v12, v33

    move-object/from16 v13, v34

    move-object/from16 v15, v36

    move-object/from16 v5, v37

    move-wide/from16 v17, v44

    goto/16 :goto_b

    .line 1025
    .end local v0
    .end local v4
    .end local v15
    .end local v31
    .end local v32
    .end local v33
    .end local v34
    .end local v36
    .end local v37
    :catchall_5
    move-exception v0

    move-object v4, v0

    move-wide/from16 v20, v10

    goto/16 :goto_24

    .line 1023
    :catch_7
    move-exception v0

    move-wide v6, v10

    goto/16 :goto_25

    .line 1025
    .end local v44
    .local v8, "start":J
    :catchall_6
    move-exception v0

    move-wide/from16 v44, v8

    move-object v4, v0

    move-wide/from16 v20, v10

    goto/16 :goto_22

    .line 1023
    :catch_8
    move-exception v0

    move-wide/from16 v44, v8

    move-wide v6, v10

    goto/16 :goto_23

    .line 958
    .end local v10
    .restart local v0
    .restart local v4
    .local v5, "i":I
    .restart local v6
    .local v7, "eolLen":I
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v17
    .restart local v24
    .restart local v31
    .restart local v32
    .restart local v33
    .restart local v34
    .restart local v36
    .restart local v37
    .restart local v38
    .restart local v41
    .restart local v42
    :cond_21
    move-wide/from16 v44, v8

    move-object/from16 v8, v38

    move-object/from16 v30, v41

    .end local v38
    .end local v41
    .local v8, "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v30
    .restart local v44
    :goto_1d
    const/4 v5, 0x0

    .line 968
    move/from16 v35, v7

    goto :goto_1e

    .line 947
    .end local v30
    .end local v44
    .local v8, "start":J
    .local v10, "b2":I
    .restart local v38
    .restart local v41
    :cond_22
    move-wide/from16 v44, v8

    move-object/from16 v8, v38

    move-object/from16 v30, v41

    const/16 v11, 0xd

    const/16 v15, 0xa

    .end local v38
    .end local v41
    .local v8, "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v30
    .restart local v44
    :try_start_20
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v9

    move v10, v9

    .line 946
    move-object/from16 v38, v8

    move-object/from16 v41, v30

    move-wide/from16 v8, v44

    goto/16 :goto_17

    .line 968
    .end local v7
    .end local v30
    .end local v42
    .end local v44
    .local v8, "start":J
    .local v10, "first":Z
    .local v11, "inbuf":[B
    .restart local v35
    .restart local v38
    :cond_23
    move-wide/from16 v44, v8

    move/from16 v42, v10

    move-object/from16 v30, v11

    move-object/from16 v8, v38

    .end local v10
    .end local v11
    .end local v38
    .local v8, "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v30
    .restart local v42
    .restart local v44
    :goto_1e
    add-int/lit8 v7, v5, 0x1

    aget-byte v9, v30, v5

    and-int/lit8 v9, v9, 0x7f

    aget v9, v37, v9

    sub-int/2addr v7, v9

    aget v9, v36, v5

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 970
    .local v7, "skip":I
    const/4 v9, 0x2

    if-ge v7, v9, :cond_26

    .line 974
    if-nez v3, :cond_24

    const/4 v9, 0x1

    if-le v12, v9, :cond_24

    .line 975
    add-int/lit8 v9, v12, -0x1

    const/4 v10, 0x0

    invoke-virtual {v6, v14, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 976
    :cond_24
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 977
    const-wide/16 v9, 0x1

    invoke-direct {v1, v2, v9, v10}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    .line 978
    const/4 v9, 0x1

    if-lt v12, v9, :cond_25

    .line 980
    add-int/lit8 v9, v12, -0x1

    aget-byte v9, v14, v9

    const/4 v10, 0x0

    aput-byte v9, v14, v10

    .line 981
    aget-byte v9, v30, v10

    const/4 v11, 0x1

    aput-byte v9, v14, v11

    .line 982
    const/4 v9, 0x2

    goto :goto_1f

    .line 985
    :cond_25
    move v11, v9

    const/4 v9, 0x0

    aget-byte v10, v30, v9

    aput-byte v10, v14, v9

    .line 986
    const/4 v9, 0x1

    .line 1002
    .end local v12
    .end local v30
    .local v9, "prevSize":I
    .restart local v11
    :goto_1f
    move v12, v9

    move-object/from16 v11, v30

    const/4 v9, 0x0

    goto :goto_21

    .line 991
    .end local v9
    .end local v11
    .restart local v12
    .restart local v30
    :cond_26
    const/4 v11, 0x1

    if-lez v12, :cond_27

    if-nez v3, :cond_27

    .line 992
    const/4 v9, 0x0

    invoke-virtual {v6, v14, v9, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_20

    .line 994
    :cond_27
    const/4 v9, 0x0

    :goto_20
    move v10, v7

    .line 995
    .end local v12
    .local v10, "prevSize":I
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 996
    int-to-long v11, v10

    invoke-direct {v1, v2, v11, v12}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    .line 998
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_9
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    move-object/from16 v11, v30

    .line 999
    .local v11, "tmp":[B
    move-object v12, v14

    .line 1000
    .end local v30
    .local v12, "inbuf":[B
    nop

    .line 1002
    .end local v14
    .local v11, "previnbuf":[B
    move-object v14, v11

    move-object v11, v12

    move v12, v10

    .end local v10
    .local v11, "inbuf":[B
    .local v12, "prevSize":I
    .restart local v14
    :goto_21
    const/4 v10, 0x0

    .line 894
    .end local v5
    .end local v7
    .end local v35
    .end local v42
    .local v10, "first":Z
    nop

    .line 889
    move-object v7, v8

    move/from16 v19, v13

    move-object/from16 v13, v34

    move-object/from16 v15, v36

    move-object/from16 v5, v37

    move-wide/from16 v8, v44

    goto/16 :goto_10

    .line 1025
    .end local v0
    .end local v4
    .end local v6
    .end local v8
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v24
    .end local v31
    .end local v32
    .end local v33
    .end local v34
    .end local v36
    .end local v37
    :catchall_7
    move-exception v0

    move-object v4, v0

    move-wide/from16 v20, v17

    goto :goto_24

    .line 1023
    :catch_9
    move-exception v0

    move-wide/from16 v6, v17

    goto :goto_25

    .line 911
    .end local v44
    .restart local v0
    .restart local v4
    .restart local v5
    .restart local v6
    .local v8, "start":J
    .restart local v10
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v24
    .restart local v31
    .restart local v32
    .restart local v33
    .restart local v34
    .restart local v35
    .restart local v36
    .restart local v37
    .restart local v38
    :cond_28
    move-wide/from16 v44, v8

    move/from16 v42, v10

    move-object/from16 v30, v11

    move-object/from16 v8, v38

    const/4 v9, 0x0

    .end local v10
    .end local v11
    .end local v38
    .local v8, "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v30
    .restart local v42
    .restart local v44
    add-int/lit8 v5, v5, -0x1

    move-object v7, v8

    move-wide/from16 v8, v44

    goto/16 :goto_11

    .line 1025
    .end local v0
    .end local v4
    .end local v5
    .end local v6
    .end local v12
    .end local v13
    .end local v14
    .end local v24
    .end local v30
    .end local v31
    .end local v32
    .end local v33
    .end local v34
    .end local v35
    .end local v36
    .end local v37
    .end local v42
    .end local v44
    .local v8, "start":J
    :catchall_8
    move-exception v0

    move-wide/from16 v44, v8

    move-object v4, v0

    move-wide/from16 v20, v17

    .local v17, "start":J
    .local v20, "end":J
    :goto_22
    move-wide/from16 v17, v44

    .end local v8
    .restart local v44
    goto/16 :goto_33

    .line 1023
    .end local v20
    .end local v44
    .restart local v8
    .local v17, "end":J
    :catch_a
    move-exception v0

    move-wide/from16 v44, v8

    move-wide/from16 v6, v17

    .end local v17
    .end local v29
    .local v4, "start":J
    .local v6, "end":J
    .local v10, "boundary":Ljava/lang/String;
    :goto_23
    move-object/from16 v10, v29

    move-wide/from16 v4, v44

    .end local v8
    .restart local v44
    goto/16 :goto_31

    .line 865
    .end local v6
    .end local v44
    .restart local v0
    .local v4, "bl":I
    .local v5, "bcs":[I
    .local v7, "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v8
    .local v11, "lin":Lcom/sun/mail/util/LineInputStream;
    .local v12, "preamblesb":Ljava/lang/StringBuffer;
    .local v13, "lineSeparator":Ljava/lang/String;
    .local v14, "line":Ljava/lang/String;
    .local v15, "gss":[I
    .restart local v20
    .restart local v24
    :cond_29
    move-object/from16 v37, v5

    move-wide/from16 v44, v8

    move-object/from16 v29, v10

    move-object/from16 v31, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move-object/from16 v32, v14

    move-object/from16 v36, v15

    move-object v8, v7

    .end local v5
    .end local v7
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .local v8, "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v29
    .restart local v31
    .restart local v32
    .restart local v33
    .restart local v34
    .restart local v36
    .restart local v37
    .restart local v44
    :try_start_21
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "Stream doesn\'t support mark"

    invoke-direct {v5, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1025
    .end local v0
    .end local v4
    .end local v8
    .end local v24
    .end local v31
    .end local v32
    .end local v33
    .end local v34
    .end local v36
    .end local v37
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_b
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    :catchall_9
    move-exception v0

    move-object v4, v0

    .end local v44
    .local v17, "start":J
    :goto_24
    move-wide/from16 v17, v44

    goto/16 :goto_33

    .line 1023
    .end local v17
    .restart local v44
    :catch_b
    move-exception v0

    move-wide/from16 v6, v20

    .end local v20
    .end local v29
    .end local v44
    .local v4, "start":J
    .restart local v6
    .restart local v10
    :goto_25
    move-object/from16 v10, v29

    move-wide/from16 v4, v44

    goto/16 :goto_31

    .line 1025
    .end local v4
    .end local v6
    .local v8, "start":J
    .restart local v20
    :catchall_a
    move-exception v0

    move-wide/from16 v44, v8

    move-object/from16 v29, v10

    move-object v4, v0

    move-wide/from16 v17, v44

    .end local v8
    .end local v10
    .restart local v29
    .restart local v44
    goto/16 :goto_33

    .line 1023
    .end local v29
    .end local v44
    .restart local v8
    .restart local v10
    :catch_c
    move-exception v0

    move-wide/from16 v44, v8

    move-object/from16 v29, v10

    move-wide/from16 v6, v20

    move-wide/from16 v4, v44

    .end local v8
    .end local v10
    .restart local v29
    .restart local v44
    goto/16 :goto_31

    .line 1025
    .end local v26
    .end local v27
    .end local v29
    .end local v44
    .local v8, "cType":Ljavax/mail/internet/ContentType;
    .local v9, "bp":Ljava/lang/String;
    .restart local v10
    .restart local v17
    :catchall_b
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    move-object v4, v0

    .end local v8
    .end local v9
    .end local v10
    .restart local v26
    .restart local v27
    .restart local v29
    goto/16 :goto_33

    .line 1023
    .end local v26
    .end local v27
    .end local v29
    .restart local v8
    .restart local v9
    .restart local v10
    :catch_d
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    .end local v8
    .end local v9
    .end local v10
    .restart local v26
    .restart local v27
    .restart local v29
    goto/16 :goto_31

    .line 822
    .end local v26
    .end local v27
    .end local v29
    .restart local v0
    .local v4, "bl":I
    .restart local v5
    .local v6, "i":I
    .restart local v8
    .restart local v9
    .restart local v10
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    :cond_2a
    move-object/from16 v37, v5

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    move-object/from16 v31, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move-object/from16 v36, v15

    const/4 v9, 0x0

    .end local v5
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v15
    .restart local v26
    .restart local v27
    .restart local v29
    .restart local v31
    .restart local v33
    .restart local v34
    .restart local v36
    .restart local v37
    add-int/lit8 v5, v4, -0x1

    .local v5, "j":I
    :goto_26
    if-ge v5, v6, :cond_2c

    .line 833
    :goto_27
    if-gtz v5, :cond_2b

    .end local v5
    goto :goto_28

    .line 834
    .restart local v5
    :cond_2b
    add-int/lit8 v5, v5, -0x1

    :try_start_22
    aput v6, v36, v5

    goto :goto_27

    .line 824
    :cond_2c
    aget-byte v7, v0, v5

    sub-int v8, v5, v6

    aget-byte v8, v0, v8

    if-ne v7, v8, :cond_2d

    .line 826
    add-int/lit8 v7, v5, -0x1

    aput v6, v36, v7

    .line 822
    add-int/lit8 v5, v5, -0x1

    goto :goto_26

    .line 820
    .end local v5
    :cond_2d
    :goto_28
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move-object/from16 v10, v29

    move-object/from16 v11, v31

    move-object/from16 v12, v33

    move-object/from16 v13, v34

    move-object/from16 v15, v36

    move-object/from16 v5, v37

    goto/16 :goto_a

    .line 815
    .end local v20
    .end local v26
    .end local v27
    .end local v29
    .end local v31
    .end local v33
    .end local v34
    .end local v36
    .end local v37
    .local v5, "bcs":[I
    .local v6, "end":J
    .restart local v8
    .restart local v9
    .restart local v10
    .restart local v11
    .restart local v12
    .restart local v13
    .local v15, "i":I
    :cond_2e
    move-object/from16 v37, v5

    move-wide/from16 v20, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    move-object/from16 v31, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    const/16 v5, 0x9

    const/4 v9, 0x0

    .end local v5
    .end local v6
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .restart local v20
    .restart local v26
    .restart local v27
    .restart local v29
    .restart local v31
    .restart local v33
    .restart local v34
    .restart local v37
    aget-byte v6, v0, v15

    add-int/lit8 v7, v15, 0x1

    aput v7, v37, v6

    .line 814
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v6, v20

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move-object/from16 v10, v29

    move-object/from16 v11, v31

    move-object/from16 v12, v33

    move-object/from16 v13, v34

    move-object/from16 v5, v37

    goto/16 :goto_9

    .line 1025
    .end local v0
    .end local v4
    .end local v14
    .end local v15
    .end local v20
    .end local v26
    .end local v27
    .end local v29
    .end local v31
    .end local v33
    .end local v34
    .end local v37
    .restart local v6
    .restart local v8
    .restart local v9
    .restart local v10
    :catchall_c
    move-exception v0

    move-wide/from16 v20, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    move-object v4, v0

    .end local v6
    .end local v8
    .end local v9
    .end local v10
    .restart local v20
    .restart local v26
    .restart local v27
    .restart local v29
    goto/16 :goto_33

    .line 1023
    .end local v20
    .end local v26
    .end local v27
    .end local v29
    .restart local v6
    .restart local v8
    .restart local v9
    .restart local v10
    :catch_e
    move-exception v0

    move-wide/from16 v20, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    move-wide/from16 v4, v17

    .end local v6
    .end local v8
    .end local v9
    .end local v10
    .restart local v20
    .restart local v26
    .restart local v27
    .restart local v29
    goto/16 :goto_31

    .line 799
    .end local v20
    .end local v26
    .end local v27
    .end local v29
    .restart local v6
    .restart local v8
    .restart local v9
    .restart local v10
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    :cond_2f
    move-wide/from16 v20, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    move-object/from16 v31, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    .end local v6
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .restart local v20
    .restart local v26
    .restart local v27
    .restart local v29
    .restart local v31
    .restart local v33
    .restart local v34
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v4, "Missing start boundary"

    invoke-direct {v0, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    .end local v14
    .end local v31
    .end local v33
    .end local v34
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_f
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    :catchall_d
    move-exception v0

    goto/16 :goto_32

    .line 1023
    :catch_f
    move-exception v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    .end local v17
    .end local v20
    .end local v29
    .local v4, "start":J
    .restart local v6
    .restart local v10
    :goto_29
    move-object/from16 v10, v29

    goto/16 :goto_31

    .line 781
    .end local v4
    .end local v26
    .end local v27
    .restart local v8
    .restart local v9
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    .restart local v17
    :cond_30
    move-wide/from16 v20, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v31, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    .end local v6
    .end local v8
    .end local v9
    .end local v11
    .end local v12
    .end local v13
    .restart local v20
    .restart local v26
    .restart local v27
    .restart local v31
    .restart local v33
    .restart local v34
    :goto_2a
    :try_start_23
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_11
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    if-lez v0, :cond_33

    .line 784
    if-nez v34, :cond_31

    .line 787
    :try_start_24
    const-string v0, "line.separator"

    const-string v4, "\n"

    invoke-static {v0, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    :try_end_24
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_24} :catch_10
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_11
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    nop

    .end local v34
    .local v0, "lineSeparator":Ljava/lang/String;
    goto :goto_2b

    .line 788
    .end local v0
    .restart local v34
    :catch_10
    move-exception v0

    .line 789
    .local v0, "ex":Ljava/lang/SecurityException;
    :try_start_25
    const-string v4, "\n"

    move-object v0, v4

    .line 793
    .end local v0
    .end local v34
    .restart local v13
    :goto_2b
    move-object v13, v0

    goto :goto_2c

    .end local v13
    .restart local v34
    :cond_31
    move-object/from16 v13, v34

    .end local v34
    .restart local v13
    :goto_2c
    if-nez v33, :cond_32

    .line 794
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x2

    add-int/2addr v4, v6

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 795
    .end local v33
    .local v0, "preamblesb":Ljava/lang/StringBuffer;
    move-object v12, v0

    goto :goto_2d

    .end local v0
    .restart local v33
    :cond_32
    move-object/from16 v12, v33

    .end local v33
    .restart local v12
    :goto_2d
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 751
    .end local v14
    .end local v15
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_11
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move-object/from16 v11, v31

    goto/16 :goto_2

    .end local v12
    .end local v13
    .restart local v33
    .restart local v34
    :cond_33
    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move-object/from16 v11, v31

    move-object/from16 v12, v33

    move-object/from16 v13, v34

    goto/16 :goto_2

    .line 1025
    .end local v31
    .end local v33
    .end local v34
    :catchall_e
    move-exception v0

    move-object v4, v0

    goto/16 :goto_7

    .line 1023
    :catch_11
    move-exception v0

    .end local v17
    .end local v20
    .restart local v4
    .restart local v6
    :goto_2e
    move-wide/from16 v4, v17

    :goto_2f
    move-wide/from16 v6, v20

    goto/16 :goto_31

    .line 1025
    .end local v4
    .end local v26
    .end local v27
    .restart local v8
    .restart local v9
    .restart local v17
    :catchall_f
    move-exception v0

    move-wide/from16 v20, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object v4, v0

    move-object/from16 v29, v10

    .end local v6
    .end local v8
    .end local v9
    .restart local v20
    .restart local v26
    .restart local v27
    goto/16 :goto_33

    .line 1023
    .end local v20
    .end local v26
    .end local v27
    .restart local v6
    .restart local v8
    .restart local v9
    :catch_12
    move-exception v0

    move-wide/from16 v20, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-wide/from16 v4, v17

    .end local v6
    .end local v8
    .end local v9
    .restart local v20
    .restart local v26
    .restart local v27
    goto :goto_31

    .line 759
    .end local v20
    .end local v26
    .end local v27
    .restart local v6
    .restart local v8
    .restart local v9
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    :cond_34
    move v5, v4

    move-wide/from16 v20, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v31, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    goto :goto_30

    :cond_35
    move-wide/from16 v20, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v31, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    const/16 v5, 0x9

    :goto_30
    const/4 v6, 0x2

    const/4 v9, 0x0

    .end local v6
    .end local v8
    .end local v9
    .end local v11
    .end local v12
    .end local v13
    .restart local v20
    .restart local v26
    .restart local v27
    .restart local v31
    .restart local v33
    .restart local v34
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v4, v17

    move-wide/from16 v6, v20

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move-object/from16 v11, v31

    move-object/from16 v12, v33

    move-object/from16 v13, v34

    goto/16 :goto_3

    .line 1025
    .end local v14
    .end local v15
    .end local v17
    .end local v20
    .end local v26
    .end local v27
    .end local v31
    .end local v33
    .end local v34
    .restart local v4
    .restart local v6
    .restart local v8
    .restart local v9
    :catchall_10
    move-exception v0

    move-wide/from16 v17, v4

    move-wide/from16 v20, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object v4, v0

    move-object/from16 v29, v10

    .end local v4
    .end local v6
    .end local v8
    .end local v9
    .restart local v17
    .restart local v20
    .restart local v26
    .restart local v27
    goto :goto_33

    .line 1023
    .end local v17
    .end local v20
    .end local v26
    .end local v27
    .restart local v4
    .restart local v6
    .restart local v8
    .restart local v9
    :catch_13
    move-exception v0

    move-wide/from16 v17, v4

    move-wide/from16 v20, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    .line 1024
    .end local v8
    .end local v9
    .local v0, "ioex":Ljava/io/IOException;
    .restart local v26
    .restart local v27
    :goto_31
    :try_start_26
    new-instance v8, Ljavax/mail/MessagingException;

    const-string v9, "IO Error"

    invoke-direct {v8, v9, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .line 1025
    .end local v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_11

    :catchall_11
    move-exception v0

    move-wide/from16 v17, v4

    move-wide/from16 v20, v6

    move-object/from16 v29, v10

    .end local v4
    .end local v6
    .end local v10
    .restart local v17
    .restart local v20
    .restart local v29
    :goto_32
    move-object v4, v0

    .line 1027
    :goto_33
    :try_start_27
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_14
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    goto :goto_34

    .line 1028
    :catch_14
    move-exception v0

    .line 1031
    :goto_34
    :try_start_28
    throw v4

    .line 743
    .end local v17
    .end local v20
    .end local v26
    .end local v27
    .end local v29
    .local v0, "boundary":Ljava/lang/String;
    .restart local v4
    .restart local v6
    .restart local v8
    .restart local v9
    :cond_36
    move-wide/from16 v17, v4

    move-wide/from16 v20, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    .end local v4
    .end local v6
    .end local v8
    .end local v9
    .restart local v17
    .restart local v20
    .restart local v26
    .restart local v27
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "Missing boundary parameter"

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 731
    .end local v0
    .end local v17
    .end local v20
    .end local v26
    .end local v27
    .restart local v4
    .restart local v6
    :catch_15
    move-exception v0

    move-wide/from16 v17, v4

    move-wide/from16 v20, v6

    .line 732
    .end local v4
    .end local v6
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v17
    .restart local v20
    :goto_35
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "No inputstream from datasource"

    invoke-direct {v4, v5, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 717
    .end local v0
    .end local v2
    .end local v3
    .end local v17
    .end local v20
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method private static readFully(Ljava/io/InputStream;[BII)I
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1052
    if-nez p3, :cond_0

    .line 1053
    const/4 v0, 0x0

    return v0

    .line 1054
    :cond_0
    const/4 v0, 0x0

    .line 1055
    .local v0, "total":I
    :goto_0
    if-gtz p3, :cond_1

    goto :goto_1

    .line 1056
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 1057
    .local v1, "bsize":I
    if-gtz v1, :cond_3

    .line 1058
    nop

    .line 1063
    .end local v1
    :goto_1
    if-lez v0, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    :goto_2
    return v1

    .line 1059
    .restart local v1
    :cond_3
    add-int/2addr p2, v1

    .line 1060
    add-int/2addr v0, v1

    .line 1061
    sub-int/2addr p3, v1

    .end local v1
    goto :goto_0
.end method

.method private skipFully(Ljava/io/InputStream;J)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1071
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 1077
    return-void

    .line 1072
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 1073
    .local v2, "cur":J
    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 1075
    sub-long/2addr p2, v2

    .end local v2
    goto :goto_0

    .line 1074
    .restart local v2
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "can\'t skip"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .locals 0
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 325
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 326
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 327
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 324
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .locals 0
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 345
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 346
    invoke-super {p0, p1, p2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;I)V

    .line 347
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 344
    .end local p1
    .end local p2
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1092
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1125
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .param p1, "headers"    # Ljavax/mail/internet/InternetHeaders;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1109
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 256
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 254
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized getBodyPart(Ljava/lang/String;)Ljavax/mail/BodyPart;
    .locals 5
    .param p1, "CID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 270
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v0

    .line 271
    .local v0, "count":I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 277
    .end local v1
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 272
    .restart local v1
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    check-cast v2, Ljavax/mail/internet/MimeBodyPart;

    .line 273
    .local v2, "part":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v2}, Ljavax/mail/internet/MimeBodyPart;->getContentID()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 275
    monitor-exit p0

    return-object v2

    .line 271
    .end local v2
    .end local v3
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v0
    .end local v1
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized getCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 242
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 243
    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I

    move-result v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized getPreamble()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 377
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 378
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public declared-synchronized isComplete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 364
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 365
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method protected declared-synchronized parse()V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 462
    :try_start_0
    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    if-eqz v0, :cond_0

    .line 463
    monitor-exit p0

    return-void

    .line 465
    :cond_0
    :try_start_1
    sget-boolean v0, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    if-eqz v0, :cond_1

    .line 466
    invoke-direct/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->parsebm()V

    .line 467
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    monitor-exit p0

    return-void

    .line 470
    :cond_1
    const/4 v2, 0x0

    .line 471
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 472
    .local v3, "sin":Ljavax/mail/internet/SharedInputStream;
    const-wide/16 v4, 0x0

    .local v4, "start":J
    const-wide/16 v6, 0x0

    .line 475
    .local v6, "end":J
    :try_start_2
    iget-object v0, v1, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    .line 476
    instance-of v0, v2, Ljava/io/ByteArrayInputStream;

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    if-nez v0, :cond_2

    .line 477
    :try_start_3
    instance-of v0, v2, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_2

    .line 478
    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-nez v0, :cond_2

    .line 479
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    move-object v2, v0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    move-wide/from16 v18, v4

    goto/16 :goto_2a

    .line 483
    :cond_2
    :goto_0
    :try_start_4
    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_3

    .line 484
    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v3, v0

    .line 486
    :cond_3
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v8, v1, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 487
    .local v8, "cType":Ljavax/mail/internet/ContentType;
    const/4 v0, 0x0

    .line 488
    .local v0, "boundary":Ljava/lang/String;
    const-string v9, "boundary"

    invoke-virtual {v8, v9}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 489
    .local v9, "bp":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 490
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "--"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto :goto_1

    .line 491
    :cond_4
    sget-boolean v10, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    if-eqz v10, :cond_2f

    .line 496
    move-object v10, v0

    .end local v0
    .local v10, "boundary":Ljava/lang/String;
    :goto_1
    :try_start_5
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v0

    .line 497
    .local v11, "lin":Lcom/sun/mail/util/LineInputStream;
    const/4 v0, 0x0

    .line 499
    .local v0, "preamblesb":Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .line 500
    .local v12, "lineSeparator":Ljava/lang/String;
    move-object v13, v12

    move-object v12, v0

    .end local v0
    .local v12, "preamblesb":Ljava/lang/StringBuffer;
    .local v13, "lineSeparator":Ljava/lang/String;
    :goto_2
    invoke-virtual {v11}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .local v14, "line":Ljava/lang/String;
    const/4 v15, 0x1

    if-nez v0, :cond_5

    .line 547
    move-wide/from16 v18, v4

    goto :goto_5

    .line 500
    :cond_5
    nop

    .line 508
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v15

    .local v0, "i":I
    move v15, v0

    .end local v0
    .local v15, "i":I
    :goto_3
    if-gez v15, :cond_6

    .line 513
    move-wide/from16 v18, v4

    goto :goto_4

    .line 509
    :cond_6
    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 510
    .local v0, "c":C
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    move-wide/from16 v18, v4

    const/16 v4, 0x20

    if-eq v0, v4, :cond_2e

    .end local v4
    .local v18, "start":J
    const/16 v4, 0x9

    if-eq v0, v4, :cond_2d

    .line 511
    nop

    .line 513
    .end local v0
    :goto_4
    add-int/lit8 v0, v15, 0x1

    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    move-object v14, v0

    .line 514
    if-eqz v10, :cond_8

    .line 515
    :try_start_7
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_7

    .line 516
    goto :goto_5

    .line 530
    :cond_7
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v30, v11

    move-object/from16 v32, v12

    goto/16 :goto_22

    .line 523
    :cond_8
    :try_start_8
    const-string v0, "--"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    if-eqz v0, :cond_29

    .line 524
    move-object v10, v14

    .line 525
    nop

    .line 547
    .end local v15
    :goto_5
    if-eqz v14, :cond_28

    .line 550
    if-eqz v12, :cond_9

    .line 551
    :try_start_9
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    .line 693
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    .end local v6
    .end local v8
    .end local v10
    .end local v18
    .local v5, "start":J
    .local v9, "end":J
    .local v26, "cType":Ljavax/mail/internet/ContentType;
    .local v27, "bp":Ljava/lang/String;
    .local v28, "boundary":Ljava/lang/String;
    :goto_6
    move-object/from16 v28, v10

    goto/16 :goto_20

    .line 691
    .end local v5
    .end local v26
    .end local v27
    .end local v28
    .restart local v6
    .restart local v8
    .local v9, "bp":Ljava/lang/String;
    .restart local v10
    .restart local v18
    :catch_1
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    .end local v8
    .end local v9
    .end local v18
    .restart local v4
    .restart local v26
    .restart local v27
    :goto_7
    move-wide/from16 v4, v18

    goto/16 :goto_26

    .line 554
    .end local v4
    .end local v26
    .end local v27
    .restart local v8
    .restart local v9
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v18
    :cond_9
    :goto_8
    :try_start_a
    invoke-static {v10}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 555
    .local v0, "bndbytes":[B
    array-length v4, v0

    .line 561
    .local v4, "bl":I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    const/4 v5, 0x0

    .line 563
    .local v5, "done":Z
    :goto_9
    if-eqz v5, :cond_a

    goto :goto_a

    .line 564
    :cond_a
    const/4 v15, 0x0

    .line 565
    .local v15, "headers":Ljavax/mail/internet/InternetHeaders;
    if-eqz v3, :cond_f

    .line 566
    :try_start_b
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 568
    :cond_b
    invoke-virtual {v11}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v20

    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v14, v20

    if-eqz v20, :cond_c

    :try_start_c
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-gtz v20, :cond_b

    .line 570
    :cond_c
    if-nez v14, :cond_e

    .line 571
    :try_start_d
    sget-boolean v16, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v16, :cond_d

    .line 575
    move/from16 v22, v5

    const/4 v5, 0x0

    :try_start_e
    iput-boolean v5, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 576
    .end local v5
    .local v22, "done":Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    nop

    .line 695
    .end local v0
    .end local v4
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v22
    :goto_a
    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    goto :goto_b

    .line 696
    :catch_2
    move-exception v0

    .line 701
    :goto_b
    const/4 v4, 0x1

    :try_start_10
    iput-boolean v4, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 702
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    monitor-exit p0

    return-void

    .line 572
    .restart local v0
    .restart local v4
    .restart local v5
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    :cond_d
    move/from16 v22, v5

    .end local v5
    .restart local v22
    :try_start_11
    new-instance v5, Ljavax/mail/MessagingException;

    .line 573
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-wide/from16 v23, v6

    :try_start_12
    const-string v6, "missing multipart end boundary"

    .line 572
    .end local v6
    .local v23, "end":J
    invoke-direct {v5, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 693
    .end local v0
    .end local v4
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v22
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-wide/from16 v5, v18

    goto/16 :goto_1b

    .line 691
    :catch_3
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-wide/from16 v4, v18

    goto :goto_d

    .line 583
    .end local v23
    .restart local v0
    .restart local v4
    .restart local v5
    .restart local v6
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    :cond_e
    move/from16 v22, v5

    move-wide/from16 v23, v6

    move-wide/from16 v5, v18

    .end local v5
    .end local v6
    .restart local v22
    .restart local v23
    goto :goto_c

    .line 693
    .end local v0
    .end local v4
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v22
    .end local v23
    .restart local v6
    :catchall_2
    move-exception v0

    move-wide/from16 v23, v6

    move-object v4, v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-wide/from16 v5, v18

    move-wide/from16 v9, v23

    .end local v6
    .restart local v23
    goto/16 :goto_28

    .line 691
    .end local v23
    .restart local v6
    :catch_4
    move-exception v0

    move-wide/from16 v23, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-wide/from16 v4, v18

    .end local v6
    .restart local v23
    goto/16 :goto_26

    .line 580
    .end local v23
    .restart local v0
    .restart local v4
    .restart local v5
    .restart local v6
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    :cond_f
    move/from16 v22, v5

    move-wide/from16 v23, v6

    .end local v5
    .end local v6
    .restart local v22
    .restart local v23
    :try_start_13
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v5

    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move-object v15, v5

    .line 583
    move-wide/from16 v5, v18

    .end local v18
    .local v5, "start":J
    :goto_c
    :try_start_14
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v7

    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    if-eqz v7, :cond_27

    .line 586
    const/4 v7, 0x0

    .line 588
    .local v7, "buf":Ljava/io/ByteArrayOutputStream;
    if-nez v3, :cond_10

    .line 589
    move-object/from16 v25, v7

    :try_start_15
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .end local v7
    .local v25, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 593
    .end local v25
    .restart local v7
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move-wide/from16 v18, v23

    goto :goto_e

    .line 693
    .end local v0
    .end local v4
    .end local v7
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v22
    :catchall_3
    move-exception v0

    move-object v4, v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    goto/16 :goto_1b

    .line 691
    :catch_5
    move-exception v0

    move-wide v4, v5

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    .end local v5
    .end local v8
    .end local v9
    .end local v23
    .local v4, "start":J
    .restart local v6
    .restart local v26
    .restart local v27
    :goto_d
    move-wide/from16 v6, v23

    goto/16 :goto_26

    .line 591
    .end local v6
    .end local v26
    .end local v27
    .restart local v0
    .local v4, "bl":I
    .restart local v5
    .restart local v7
    .restart local v8
    .restart local v9
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    .restart local v22
    .restart local v23
    :cond_10
    move-object/from16 v25, v7

    .end local v7
    .restart local v25
    :try_start_16
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    .line 593
    .end local v23
    .local v18, "end":J
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    move-object/from16 v7, v25

    .end local v25
    .restart local v7
    :goto_e
    const/16 v20, 0x1

    .line 595
    .local v20, "bol":Z
    const/16 v21, -0x1

    .local v21, "eol1":I
    move-object/from16 v26, v8

    .end local v8
    .restart local v26
    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-wide/from16 v9, v18

    move/from16 v8, v21

    const/16 v18, -0x1

    .end local v10
    .end local v21
    .local v8, "eol1":I
    .local v9, "end":J
    .local v18, "eol2":I
    .restart local v27
    .restart local v28
    :goto_f
    move/from16 v29, v18

    .line 601
    .end local v18
    .local v29, "eol2":I
    move-object/from16 v30, v11

    .end local v11
    .local v30, "lin":Lcom/sun/mail/util/LineInputStream;
    if-eqz v20, :cond_1d

    .line 607
    add-int/lit8 v11, v4, 0x4

    add-int/lit16 v11, v11, 0x3e8

    :try_start_17
    invoke-virtual {v2, v11}, Ljava/io/InputStream;->mark(I)V

    .line 609
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_10
    if-lt v11, v4, :cond_11

    .line 612
    move-object/from16 v32, v12

    move-object/from16 v31, v14

    goto :goto_11

    .line 610
    :cond_11
    move-object/from16 v31, v14

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v14

    .end local v14
    .local v31, "line":Ljava/lang/String;
    move-object/from16 v32, v12

    aget-byte v12, v0, v11

    .end local v12
    .local v32, "preamblesb":Ljava/lang/StringBuffer;
    and-int/lit16 v12, v12, 0xff

    if-eq v14, v12, :cond_1c

    .line 611
    nop

    .line 612
    :goto_11
    if-ne v11, v4, :cond_17

    .line 614
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 615
    .local v12, "b2":I
    const/16 v14, 0x2d

    if-ne v12, v14, :cond_12

    .line 616
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v14

    move-object/from16 v33, v0

    const/16 v0, 0x2d

    if-ne v14, v0, :cond_13

    .line 617
    .end local v0
    .local v33, "bndbytes":[B
    const/4 v14, 0x1

    iput-boolean v14, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 618
    const/4 v0, 0x1

    .line 619
    .end local v22
    .local v0, "done":Z
    nop

    .line 685
    .end local v11
    .end local v12
    :goto_12
    const/4 v11, 0x0

    goto/16 :goto_17

    .line 623
    .end local v33
    .local v0, "bndbytes":[B
    .restart local v11
    .restart local v12
    .restart local v22
    :cond_12
    move-object/from16 v33, v0

    .end local v0
    .restart local v33
    :cond_13
    :goto_13
    const/16 v0, 0x20

    if-eq v12, v0, :cond_16

    const/16 v14, 0x9

    if-eq v12, v14, :cond_16

    .line 626
    const/16 v0, 0xa

    if-ne v12, v0, :cond_14

    .line 627
    goto :goto_14

    .line 628
    :cond_14
    const/16 v0, 0xd

    if-ne v12, v0, :cond_18

    .line 629
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/io/InputStream;->mark(I)V

    .line 630
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v14, 0xa

    if-eq v0, v14, :cond_15

    .line 631
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 632
    nop

    .line 685
    .end local v11
    .end local v12
    :cond_15
    :goto_14
    move/from16 v0, v22

    goto :goto_12

    .line 624
    .restart local v11
    .restart local v12
    :cond_16
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    move v12, v0

    goto :goto_13

    .line 636
    .end local v12
    .end local v33
    .restart local v0
    :cond_17
    move-object/from16 v33, v0

    .end local v0
    .restart local v33
    :cond_18
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 640
    if-eqz v7, :cond_1b

    const/4 v0, -0x1

    if-eq v8, v0, :cond_1a

    .line 641
    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 642
    move/from16 v12, v29

    if-eq v12, v0, :cond_19

    .line 643
    .end local v29
    .local v12, "eol2":I
    invoke-virtual {v7, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 644
    :cond_19
    move v12, v0

    move v8, v0

    .end local v11
    goto :goto_16

    .line 649
    .end local v12
    .restart local v29
    :cond_1a
    move/from16 v12, v29

    goto :goto_15

    :cond_1b
    move/from16 v12, v29

    const/4 v0, -0x1

    .end local v29
    .restart local v12
    :goto_15
    goto :goto_16

    .line 609
    .end local v12
    .end local v33
    .restart local v0
    .restart local v11
    .restart local v29
    :cond_1c
    move-object/from16 v33, v0

    move/from16 v12, v29

    const/4 v0, -0x1

    .end local v0
    .end local v29
    .restart local v12
    .restart local v33
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v14, v31

    move-object/from16 v12, v32

    move-object/from16 v0, v33

    goto/16 :goto_10

    .line 693
    .end local v4
    .end local v7
    .end local v8
    .end local v11
    .end local v12
    .end local v13
    .end local v15
    .end local v20
    .end local v22
    .end local v30
    .end local v31
    .end local v32
    .end local v33
    :catchall_4
    move-exception v0

    goto/16 :goto_27

    .line 691
    :catch_6
    move-exception v0

    move-wide v4, v5

    move-wide v6, v9

    goto/16 :goto_21

    .line 649
    .restart local v0
    .restart local v4
    .restart local v7
    .restart local v8
    .local v12, "preamblesb":Ljava/lang/StringBuffer;
    .restart local v13
    .restart local v14
    .restart local v15
    .restart local v20
    .restart local v22
    .restart local v29
    .restart local v30
    :cond_1d
    move-object/from16 v33, v0

    move-object/from16 v32, v12

    move-object/from16 v31, v14

    move/from16 v12, v29

    const/4 v0, -0x1

    .end local v0
    .end local v12
    .end local v14
    .end local v29
    .restart local v18
    .restart local v31
    .restart local v32
    .restart local v33
    :goto_16
    move/from16 v18, v12

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v11

    move v12, v11

    .local v12, "b":I
    if-gez v11, :cond_20

    .line 650
    sget-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v0, :cond_1f

    .line 653
    const/4 v11, 0x0

    iput-boolean v11, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 654
    const/4 v0, 0x1

    .line 655
    .end local v22
    .local v0, "done":Z
    nop

    .line 685
    move/from16 v29, v18

    .end local v12
    .end local v18
    .restart local v29
    :goto_17
    if-eqz v3, :cond_1e

    .line 686
    invoke-interface {v3, v5, v6, v9, v10}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v12

    .local v12, "part":Ljavax/mail/internet/MimeBodyPart;
    goto :goto_18

    .line 688
    .end local v12
    :cond_1e
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v1, v15, v12}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v12

    .line 689
    .restart local v12
    :goto_18
    invoke-super {v1, v12}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 563
    .end local v7
    .end local v8
    .end local v12
    .end local v15
    .end local v20
    .end local v29
    move-wide/from16 v18, v5

    move-wide v6, v9

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move-object/from16 v10, v28

    move-object/from16 v11, v30

    move-object/from16 v14, v31

    move-object/from16 v12, v32

    move v5, v0

    move-object/from16 v0, v33

    goto/16 :goto_9

    .line 651
    .end local v0
    .restart local v7
    .restart local v8
    .local v12, "b":I
    .restart local v15
    .restart local v18
    .restart local v20
    .restart local v22
    :cond_1f
    new-instance v0, Ljavax/mail/MessagingException;

    .line 652
    const-string v11, "missing multipart end boundary"

    .line 651
    invoke-direct {v0, v11}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_20
    const/4 v11, 0x0

    const/16 v14, 0xd

    if-eq v12, v14, :cond_23

    const/16 v14, 0xa

    if-ne v12, v14, :cond_21

    goto :goto_1a

    .line 675
    :cond_21
    const/16 v20, 0x0

    .line 676
    if-eqz v7, :cond_22

    .line 677
    invoke-virtual {v7, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 600
    .end local v12
    nop

    .line 595
    .end local v30
    .end local v31
    .end local v32
    .end local v33
    .local v0, "bndbytes":[B
    .local v11, "lin":Lcom/sun/mail/util/LineInputStream;
    .local v12, "preamblesb":Ljava/lang/StringBuffer;
    .restart local v14
    :cond_22
    :goto_19
    move-object/from16 v11, v30

    move-object/from16 v14, v31

    move-object/from16 v12, v32

    move-object/from16 v0, v33

    goto/16 :goto_f

    .line 663
    .end local v0
    .end local v11
    .end local v14
    .local v12, "b":I
    .restart local v30
    .restart local v31
    .restart local v32
    .restart local v33
    :cond_23
    :goto_1a
    const/16 v20, 0x1

    .line 664
    if-eqz v3, :cond_24

    .line 665
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v16

    const-wide/16 v23, 0x1

    sub-long v16, v16, v23

    .line 666
    .end local v9
    .local v16, "end":J
    move-wide/from16 v9, v16

    .end local v16
    .restart local v9
    :cond_24
    move v8, v12

    .line 667
    const/16 v14, 0xd

    if-ne v12, v14, :cond_26

    .line 668
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/io/InputStream;->mark(I)V

    .line 669
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    move v12, v0

    const/16 v11, 0xa

    if-ne v0, v11, :cond_25

    .line 670
    move/from16 v18, v12

    goto :goto_19

    .line 672
    :cond_25
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_19

    .line 595
    .end local v12
    :cond_26
    const/4 v14, 0x1

    goto :goto_19

    .line 584
    .end local v7
    .end local v18
    .end local v20
    .end local v26
    .end local v27
    .end local v28
    .end local v30
    .end local v31
    .end local v32
    .end local v33
    .restart local v0
    .local v8, "cType":Ljavax/mail/internet/ContentType;
    .local v9, "bp":Ljava/lang/String;
    .restart local v10
    .restart local v11
    .local v12, "preamblesb":Ljava/lang/StringBuffer;
    .restart local v14
    .restart local v23
    :cond_27
    move-object/from16 v33, v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-object/from16 v30, v11

    move-object/from16 v32, v12

    move-object/from16 v31, v14

    .end local v0
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v14
    .restart local v26
    .restart local v27
    .restart local v28
    .restart local v30
    .restart local v31
    .restart local v32
    .restart local v33
    :try_start_18
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v7, "Stream doesn\'t support mark"

    invoke-direct {v0, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    .end local v4
    .end local v13
    .end local v15
    .end local v22
    .end local v30
    .end local v31
    .end local v32
    .end local v33
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :catchall_5
    move-exception v0

    move-object v4, v0

    .end local v23
    .local v9, "end":J
    :goto_1b
    move-wide/from16 v9, v23

    goto/16 :goto_28

    .line 691
    .end local v9
    .restart local v23
    :catch_7
    move-exception v0

    move-wide v4, v5

    move-wide/from16 v6, v23

    goto/16 :goto_21

    .line 693
    .end local v26
    .end local v27
    .end local v28
    .restart local v8
    .local v9, "bp":Ljava/lang/String;
    .restart local v10
    :catchall_6
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-object v4, v0

    goto :goto_1c

    .line 691
    :catch_8
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-wide v4, v5

    goto :goto_1d

    .line 693
    .end local v5
    .local v18, "start":J
    :catchall_7
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-object v4, v0

    move-wide/from16 v5, v18

    .end local v18
    .end local v23
    .restart local v5
    :goto_1c
    move-wide/from16 v9, v23

    goto :goto_1e

    .line 691
    .end local v5
    .restart local v18
    .restart local v23
    :catch_9
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-wide/from16 v4, v18

    .end local v18
    .end local v23
    .local v4, "start":J
    .restart local v6
    :goto_1d
    move-wide/from16 v6, v23

    goto :goto_1f

    .line 693
    .end local v4
    .restart local v18
    :catchall_8
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-object v4, v0

    move-wide v9, v6

    move-wide/from16 v5, v18

    .end local v6
    .end local v8
    .end local v9
    .end local v10
    .end local v18
    .restart local v5
    .restart local v26
    .restart local v27
    .restart local v28
    :goto_1e
    goto/16 :goto_28

    .line 691
    .end local v5
    .end local v26
    .end local v27
    .end local v28
    .restart local v6
    .restart local v8
    .restart local v9
    .restart local v10
    .restart local v18
    :catch_a
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-wide/from16 v4, v18

    .end local v8
    .end local v9
    .end local v10
    .end local v18
    .restart local v4
    .restart local v26
    .restart local v27
    .restart local v28
    :goto_1f
    goto/16 :goto_26

    .line 548
    .end local v4
    .end local v26
    .end local v27
    .end local v28
    .restart local v8
    .restart local v9
    .restart local v10
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v18
    :cond_28
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-object/from16 v30, v11

    move-object/from16 v32, v12

    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .restart local v26
    .restart local v27
    .restart local v28
    .restart local v30
    .restart local v32
    :try_start_19
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v4, "Missing start boundary"

    invoke-direct {v0, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    .end local v13
    .end local v14
    .end local v30
    .end local v32
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    :catchall_9
    move-exception v0

    move-object v4, v0

    .end local v6
    .end local v18
    .restart local v5
    .local v9, "end":J
    :goto_20
    move-wide v9, v6

    move-wide/from16 v5, v18

    goto/16 :goto_28

    .line 691
    .end local v5
    .end local v9
    .restart local v6
    .restart local v18
    :catch_b
    move-exception v0

    move-wide/from16 v4, v18

    .end local v18
    .end local v28
    .restart local v4
    .restart local v10
    :goto_21
    move-object/from16 v10, v28

    goto/16 :goto_26

    .line 530
    .end local v4
    .end local v26
    .end local v27
    .restart local v8
    .local v9, "bp":Ljava/lang/String;
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .local v15, "i":I
    .restart local v18
    :cond_29
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v30, v11

    move-object/from16 v32, v12

    .end local v8
    .end local v9
    .end local v11
    .end local v12
    .restart local v26
    .restart local v27
    .restart local v30
    .restart local v32
    :goto_22
    :try_start_1a
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_d
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    if-lez v0, :cond_2c

    .line 533
    if-nez v13, :cond_2a

    .line 536
    :try_start_1b
    const-string v0, "line.separator"

    const-string v4, "\n"

    invoke-static {v0, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_1b} :catch_c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    nop

    .end local v13
    .local v0, "lineSeparator":Ljava/lang/String;
    goto :goto_23

    .line 537
    .end local v0
    .restart local v13
    :catch_c
    move-exception v0

    .line 538
    .local v0, "ex":Ljava/lang/SecurityException;
    :try_start_1c
    const-string v4, "\n"

    move-object v0, v4

    .line 542
    .end local v0
    :goto_23
    move-object v13, v0

    :cond_2a
    if-nez v32, :cond_2b

    .line 543
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 544
    .end local v32
    .local v0, "preamblesb":Ljava/lang/StringBuffer;
    move-object v12, v0

    goto :goto_24

    .end local v0
    .restart local v32
    :cond_2b
    move-object/from16 v12, v32

    .end local v32
    .restart local v12
    :goto_24
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    .end local v14
    .end local v15
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    move-wide/from16 v4, v18

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move-object/from16 v11, v30

    goto/16 :goto_2

    .end local v12
    .restart local v32
    :cond_2c
    move-wide/from16 v4, v18

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move-object/from16 v11, v30

    move-object/from16 v12, v32

    goto/16 :goto_2

    .line 693
    .end local v13
    .end local v30
    .end local v32
    :catchall_a
    move-exception v0

    move-object v4, v0

    goto/16 :goto_6

    .line 691
    :catch_d
    move-exception v0

    goto/16 :goto_7

    .line 693
    .end local v26
    .end local v27
    .restart local v8
    .restart local v9
    :catchall_b
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object v4, v0

    move-object/from16 v28, v10

    move-wide v9, v6

    move-wide/from16 v5, v18

    .end local v8
    .end local v9
    .restart local v26
    .restart local v27
    goto :goto_28

    .line 691
    .end local v26
    .end local v27
    .restart local v8
    .restart local v9
    :catch_e
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-wide/from16 v4, v18

    .end local v8
    .end local v9
    .restart local v26
    .restart local v27
    goto :goto_26

    .line 508
    .end local v26
    .end local v27
    .restart local v8
    .restart local v9
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v15
    :cond_2d
    move v0, v4

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v30, v11

    move-object/from16 v32, v12

    goto :goto_25

    :cond_2e
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v30, v11

    move-object/from16 v32, v12

    const/16 v0, 0x9

    :goto_25
    const/4 v4, 0x1

    .end local v8
    .end local v9
    .end local v11
    .end local v12
    .restart local v26
    .restart local v27
    .restart local v30
    .restart local v32
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v4, v18

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    move-object/from16 v11, v30

    move-object/from16 v12, v32

    goto/16 :goto_3

    .line 693
    .end local v13
    .end local v14
    .end local v15
    .end local v18
    .end local v26
    .end local v27
    .end local v30
    .end local v32
    .restart local v4
    .restart local v8
    .restart local v9
    :catchall_c
    move-exception v0

    move-wide/from16 v18, v4

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object v4, v0

    move-object/from16 v28, v10

    move-wide v9, v6

    move-wide/from16 v5, v18

    .end local v4
    .end local v8
    .end local v9
    .restart local v18
    .restart local v26
    .restart local v27
    goto :goto_28

    .line 691
    .end local v18
    .end local v26
    .end local v27
    .restart local v4
    .restart local v8
    .restart local v9
    :catch_f
    move-exception v0

    move-wide/from16 v18, v4

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    .line 692
    .end local v8
    .end local v9
    .local v0, "ioex":Ljava/io/IOException;
    .restart local v26
    .restart local v27
    :goto_26
    :try_start_1d
    new-instance v8, Ljavax/mail/MessagingException;

    const-string v9, "IO Error"

    invoke-direct {v8, v9, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .line 693
    .end local v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    :catchall_d
    move-exception v0

    move-object/from16 v28, v10

    move-wide v9, v6

    move-wide v5, v4

    .end local v4
    .end local v6
    .end local v10
    .restart local v5
    .local v9, "end":J
    .restart local v28
    :goto_27
    move-object v4, v0

    .line 695
    :goto_28
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_10
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    goto :goto_29

    .line 696
    :catch_10
    move-exception v0

    .line 699
    :goto_29
    :try_start_1f
    throw v4

    .line 492
    .end local v5
    .end local v26
    .end local v27
    .end local v28
    .local v0, "boundary":Ljava/lang/String;
    .restart local v4
    .restart local v6
    .restart local v8
    .local v9, "bp":Ljava/lang/String;
    :cond_2f
    move-wide/from16 v18, v4

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    .end local v4
    .end local v8
    .end local v9
    .restart local v18
    .restart local v26
    .restart local v27
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "Missing boundary parameter"

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 480
    .end local v0
    .end local v18
    .end local v26
    .end local v27
    .restart local v4
    :catch_11
    move-exception v0

    move-wide/from16 v18, v4

    .line 481
    .end local v4
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v18
    :goto_2a
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "No inputstream from datasource"

    invoke-direct {v4, v5, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 461
    .end local v0
    .end local v2
    .end local v3
    .end local v6
    .end local v18
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    .end local p0
    throw v0
.end method

.method public removeBodyPart(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 310
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(I)V

    .line 311
    return-void
.end method

.method public removeBodyPart(Ljavax/mail/BodyPart;)Z
    .locals 1
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 293
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(Ljavax/mail/BodyPart;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setPreamble(Ljava/lang/String;)V
    .locals 0
    .param p1, "preamble"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 394
    :try_start_0
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 395
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 393
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .locals 2
    .param p1, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 231
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->setSubType(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    .line 234
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 230
    .end local v0
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method

.method protected updateHeaders()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 415
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 417
    .end local v0
    return-void

    .line 416
    .restart local v0
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 425
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    new-instance v1, Ljavax/mail/internet/ContentType;

    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v2, "boundary"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "boundary":Ljava/lang/String;
    new-instance v1, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 432
    .local v1, "los":Lcom/sun/mail/util/LineOutputStream;
    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 433
    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-static {v2}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 434
    .local v2, "pb":[B
    invoke-virtual {v1, v2}, Lcom/sun/mail/util/LineOutputStream;->write([B)V

    .line 436
    array-length v3, v2

    if-lez v3, :cond_0

    .line 437
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 438
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 442
    .end local v2
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 449
    .end local v2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 450
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 443
    .restart local v2
    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 444
    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v3, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 445
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 442
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    .end local v0
    .end local v1
    .end local v2
    .end local p1
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0
    throw p1
.end method
