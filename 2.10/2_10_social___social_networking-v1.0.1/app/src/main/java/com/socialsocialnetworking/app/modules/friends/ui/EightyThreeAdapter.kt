package com.socialsocialnetworking.app.modules.friends.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.databinding.RowEightythreeBinding
import com.socialsocialnetworking.app.modules.friends.`data`.model.EightythreeRowModel
import kotlin.Int
import kotlin.collections.List

class EightyThreeAdapter(
  var list: List<EightythreeRowModel>
) : RecyclerView.Adapter<EightyThreeAdapter.RowEightythreeVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowEightythreeVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_eightythree,parent,false)
    return RowEightythreeVH(view)
  }

  override fun onBindViewHolder(holder: RowEightythreeVH, position: Int) {
    val eightythreeRowModel = EightythreeRowModel()
    // TODO uncomment following line after integration with data source
    // val eightythreeRowModel = list[position]
    holder.binding.eightythreeRowModel = eightythreeRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<EightythreeRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: EightythreeRowModel
    ) {
    }
  }

  inner class RowEightythreeVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowEightythreeBinding = RowEightythreeBinding.bind(itemView)
  }
}
