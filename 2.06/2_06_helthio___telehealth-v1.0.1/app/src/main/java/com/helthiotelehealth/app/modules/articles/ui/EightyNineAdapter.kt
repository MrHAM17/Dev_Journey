package com.helthiotelehealth.app.modules.articles.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.databinding.RowEightynineBinding
import com.helthiotelehealth.app.modules.articles.`data`.model.EightynineRowModel
import kotlin.Int
import kotlin.collections.List

class EightyNineAdapter(
  var list: List<EightynineRowModel>
) : RecyclerView.Adapter<EightyNineAdapter.RowEightynineVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowEightynineVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_eightynine,parent,false)
    return RowEightynineVH(view)
  }

  override fun onBindViewHolder(holder: RowEightynineVH, position: Int) {
    val eightynineRowModel = EightynineRowModel()
    // TODO uncomment following line after integration with data source
    // val eightynineRowModel = list[position]
    holder.binding.eightynineRowModel = eightynineRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<EightynineRowModel>) {
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
      item: EightynineRowModel
    ) {
    }
  }

  inner class RowEightynineVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowEightynineBinding = RowEightynineBinding.bind(itemView)
  }
}
