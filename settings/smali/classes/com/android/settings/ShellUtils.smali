.class public Lcom/android/settings/ShellUtils;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ShellUtils$CommandResult;
    }
.end annotation


# direct methods
.method public static execCommand(Ljava/util/List;Z)Lcom/android/settings/ShellUtils$CommandResult;
    .locals 2
    .param p1, "isRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/settings/ShellUtils$CommandResult;"
        }
    .end annotation

    .line 66
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/settings/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/android/settings/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand([Ljava/lang/String;ZZ)Lcom/android/settings/ShellUtils$CommandResult;
    .locals 12
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .line 120
    const/4 v0, -0x1

    .line 121
    .local v0, "result":I
    const/4 v1, 0x0

    if-eqz p0, :cond_15

    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_1a

    .line 125
    :cond_0
    const/4 v2, 0x0

    .line 126
    .local v2, "process":Ljava/lang/Process;
    const/4 v3, 0x0

    .line 127
    .local v3, "successResult":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 128
    .local v4, "errorResult":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 129
    .local v5, "successMsg":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 131
    .local v6, "errorMsg":Ljava/lang/StringBuilder;
    move-object v7, v1

    .line 133
    .local v7, "os":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    if-eqz p1, :cond_1

    const-string v9, "su"

    goto :goto_0

    :cond_1
    const-string v9, "sh"

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    move-object v2, v8

    .line 134
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v8

    .line 135
    array-length v8, p0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, p0, v9

    .line 136
    .local v10, "command":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 137
    goto :goto_2

    .line 141
    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 142
    const-string v11, "\n"

    invoke-virtual {v7, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 135
    .end local v10
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 145
    :cond_3
    const-string v8, "exit\n"

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 148
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v8

    move v0, v8

    .line 150
    if-eqz p2, :cond_5

    .line 151
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v8

    .line 152
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v8

    .line 153
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v8

    .line 154
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v8

    .line 156
    :goto_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "s":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 157
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 159
    :cond_4
    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    if-eqz v8, :cond_5

    .line 160
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 169
    .end local v9
    :cond_5
    nop

    .line 170
    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    goto :goto_5

    .line 178
    :catch_0
    move-exception v8

    goto :goto_6

    .line 172
    :goto_5
    if-eqz v3, :cond_6

    .line 173
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 175
    :cond_6
    if-eqz v4, :cond_7

    .line 176
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 178
    :goto_6
    nop

    .line 179
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8
    goto :goto_8

    .line 180
    :cond_7
    :goto_7
    nop

    .line 182
    :goto_8
    if-eqz v2, :cond_e

    .line 183
    :goto_9
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_12

    .line 168
    :catchall_0
    move-exception v1

    goto :goto_15

    .line 165
    :catch_1
    move-exception v8

    .line 166
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    .end local v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_8

    .line 170
    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    goto :goto_a

    .line 178
    :catch_2
    move-exception v8

    goto :goto_b

    .line 172
    :cond_8
    :goto_a
    if-eqz v3, :cond_9

    .line 173
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 175
    :cond_9
    if-eqz v4, :cond_a

    .line 176
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_c

    .line 178
    :goto_b
    nop

    .line 179
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8
    goto :goto_d

    .line 180
    :cond_a
    :goto_c
    nop

    .line 182
    :goto_d
    if-eqz v2, :cond_e

    goto :goto_9

    .line 163
    :catch_3
    move-exception v8

    .line 164
    .restart local v8
    :try_start_4
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    .end local v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_b

    .line 170
    :try_start_5
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    goto :goto_e

    .line 178
    :catch_4
    move-exception v8

    goto :goto_f

    .line 172
    :cond_b
    :goto_e
    if-eqz v3, :cond_c

    .line 173
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 175
    :cond_c
    if-eqz v4, :cond_d

    .line 176
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_10

    .line 178
    :goto_f
    nop

    .line 179
    .restart local v8
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8
    goto :goto_11

    .line 180
    :cond_d
    :goto_10
    nop

    .line 182
    :goto_11
    if-eqz v2, :cond_e

    goto :goto_9

    .line 186
    :cond_e
    :goto_12
    new-instance v8, Lcom/android/settings/ShellUtils$CommandResult;

    if-nez v5, :cond_f

    move-object v9, v1

    goto :goto_13

    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_13
    if-nez v6, :cond_10

    goto :goto_14

    .line 187
    :cond_10
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_14
    invoke-direct {v8, v0, v9, v1}, Lcom/android/settings/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    return-object v8

    .line 168
    :goto_15
    nop

    .line 169
    if-eqz v7, :cond_11

    .line 170
    :try_start_6
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    goto :goto_16

    .line 178
    :catch_5
    move-exception v8

    goto :goto_17

    .line 172
    :cond_11
    :goto_16
    if-eqz v3, :cond_12

    .line 173
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 175
    :cond_12
    if-eqz v4, :cond_13

    .line 176
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_18

    .line 178
    :goto_17
    nop

    .line 179
    .restart local v8
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8
    goto :goto_19

    .line 180
    :cond_13
    :goto_18
    nop

    .line 182
    :goto_19
    if-eqz v2, :cond_14

    .line 183
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_14
    throw v1

    .line 122
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    :cond_15
    :goto_1a
    new-instance v2, Lcom/android/settings/ShellUtils$CommandResult;

    invoke-direct {v2, v0, v1, v1}, Lcom/android/settings/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
