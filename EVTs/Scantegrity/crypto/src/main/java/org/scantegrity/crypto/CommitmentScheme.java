/*
 * @(#)CommitmentScheme.java
 *  
 * Copyright (C) 2008 Scantegrity Project
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */
package org.scantegrity.crypto;

/**
 * Interface for commitment schemes 
 * 
 * @author Travis Mayberry, Rick Carback
 * @version 0.0.2
 * @date June 17, 2011
 **/
public interface CommitmentScheme {

	public byte[] commit(byte[] p_key, byte[] p_msg) throws Exception;
	public boolean verify(byte[] p_commit, byte[] p_key, byte[] p_msg);
}
